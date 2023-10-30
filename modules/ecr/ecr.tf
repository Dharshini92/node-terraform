resource "aws_ecr_repository" "node_app_ecr_repo" {
    name = var.ecr_repo_name  
}