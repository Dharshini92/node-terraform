variable "node_app_cluster_name" {
  description = "ECS Cluster name"
  type        = string  
}

variable "availability_zones" {
  description = "ap-south-1 AZ's"
  type        = list(string)
}

variable "node_app_task_family" {
  description = "ECS task family"
  type        = string
}


variable "container_port" {
  description = "Container Port"
  type        = number
}

variable "node_app_task_name" {
  description = "ECS Task Name"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "ECS Task Execution Role Name"
  type        = string
}

variable "application_load_balancer_name" {
  description = "ALB Name"
  type        = string
}

variable "target_group_name" {
  description = "ALB Target Group Name"
  type        = string
}

variable "node_app_service_name" {
  description = "ECS Service Name"
  type        = string
}
