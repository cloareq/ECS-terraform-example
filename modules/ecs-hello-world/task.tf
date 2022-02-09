resource "aws_ecs_task_definition" "aws-ecs-task" {
  family = "${var.app_name}-task"

  container_definitions = <<TASK_DEFINITION
  [
    {
      "name": "${var.app_name}-${var.environment}-container",
      "image": "${var.app_image}",
      "entryPoint": [],
      "essential": true,
      "environment": [
        {"name": "ENVIRONMENT", "value": "${var.environment}"}
      ],
      "portMappings": [
        {
          "containerPort": ${var.container_port},
          "hostPort": ${var.container_port}
        }
      ],
      "cpu": ${var.fargate_cpu},
      "memory": ${var.fargate_memory},
      "networkMode": "awsvpc"
    }
  ]
  TASK_DEFINITION

  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = var.fargate_memory
  cpu                      = var.fargate_cpu
  execution_role_arn       = var.iam_role
  task_role_arn            = var.iam_role

  tags = {
    Name        = "ecs-task-${var.environment}"
    Environment = var.environment
  }
}

data "aws_ecs_task_definition" "main" {
  task_definition = aws_ecs_task_definition.aws-ecs-task.family
}

