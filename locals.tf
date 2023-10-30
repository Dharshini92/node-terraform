locals {
  node_app_cluster_name           = "node_app_cluster"
  availability_zones              = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  node_app_task_family            = "node_app_task"
  container_port                  = 3000
  node_app_task_name              = "node_app_task"
  ecs_task_execution_role_name    = "node_app_task_execution_role"
  application_load_balancer_name  = "node-alb"
  target_group_name               = "target-group"
  node_app_service_name           = "node_app_service"
}
