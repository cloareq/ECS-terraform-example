locals {
  aws_region         = "eu-west-1"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  environment        = "prod"
  cidr_block         = "10.11.0.0/16"
  private_subnets    = ["10.11.1.0/24", "10.11.2.0/24", "10.11.3.0/24"]
  public_subnets     = ["10.11.10.0/24", "10.11.11.0/24", "10.11.12.0/24"]
  app_name           = "hello-world"
  app_image          = "digitalocean/flask-helloworld"
  fargate_memory     = "512"
  fargate_cpu        = "256"
  container_port     = 5000
}