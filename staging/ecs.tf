module "ecs" {
  source = "../modules/ecs-hello-world"

  environment        = local.environment
  app_name           = local.app_name
  app_image          = local.app_image
  iam_role           = module.iam.role_arn
  vpc_id             = module.vpc.vpc_id
  private_subnets_id = module.vpc.private_subnets_id
  public_subnets_id  = module.vpc.public_subnets_id
  fargate_memory     = local.fargate_memory
  fargate_cpu        = local.fargate_cpu
  container_port     = local.container_port
}