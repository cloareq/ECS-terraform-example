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
          "containerPort": 5000,
          "hostPort": 5000
        }
      ],
      "cpu": 256,
      "memory": 512,
      "networkMode": "awsvpc"
    }
  ]
  TASK_DEFINITION

  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = "512"
  cpu                      = "256"
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

