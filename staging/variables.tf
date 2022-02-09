locals {
  aws_region         = "eu-west-1"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  environment        = "staging"
  private_subnets    = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
  public_subnets     = ["10.10.10.0/24", "10.10.11.0/24", "10.10.12.0/24"]
}