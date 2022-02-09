module "ecs" {
  source = "../modules/ecs-hello-world"

  environment        = local.environment
  app_name = "hello-world"
  app_image = "digitalocean/flask-helloworld"
  iam_role = module.iam.role_arn
  vpc_id = module.vpc.vpc_id
  private_subnets_id = module.vpc.private_subnets_id
  public_subnets_id = module.vpc.public_subnets_id
}