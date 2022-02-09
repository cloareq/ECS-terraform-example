resource "aws_ecs_cluster" "aws-ecs-cluster" {
  name = "${var.app_name}-${var.environment}-cluster"
  tags = {
    Name        = "${var.app_name}-ecs"
    Environment = var.environment
  }
}