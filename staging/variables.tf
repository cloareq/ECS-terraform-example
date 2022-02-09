locals {
  aws_region         = "eu-west-1"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  environment        = "staging"
  private_subnets    = ["10.10.64.0/18", "10.10.128.0/18", "10.10.192.0/18"]
  public_subnets     = ["10.11.64.0/18", "10.11.128.0/18", "10.11.192.0/18"]
}