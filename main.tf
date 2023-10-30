terraform {
  required_version = "~> 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region      = "ap-south-1"
}

module "ecrRepo" {
    source        = "./modules/ecr"
    ecr_repo_name = local.ecr_repo_name
}

module "ecsCluster" {
    source = "./modules/ecs"
    node_app_cluster_name           = local.node_app_cluster_name
    availability_zones              = local.availability_zones
    node_app_task_family            = local.node_app_task_family
    ecr_repo_url                    = module.ecrRepo.repository_url
    container_port                  = local.container_port
    node_app_task_name              = local.node_app_task_name
    ecs_task_execution_role_name    = local.ecs_task_execution_role_name
    application_load_balancer_name  = local.application_load_balancer_name
    target_group_name               = local.target_group_name
    node_app_service_name           = local.node_app_service_name 
}
