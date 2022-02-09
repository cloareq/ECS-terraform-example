module "vpc" {
  source = "../modules/vpc"

  environment        = local.environment
  private_subnets    = local.private_subnets
  public_subnets     = local.public_subnets
  availability_zones = local.availability_zones
  cidr_block         = local.cidr_block
}