module "networking" {
  source = "./modules/networking"

  name               = local.name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  common_tags        = local.common_tags
}

module "security" {
  source = "./modules/security"

  name        = local.name
  vpc_id      = module.networking.vpc_id
  common_tags = local.common_tags
}

module "load_balancer" {
  source = "./modules/load_balancer"

  name              = local.name
  vpc_id            = module.networking.vpc_id
  subnet_ids        = module.networking.public_subnet_ids
  security_group_id = module.security.alb_security_group_id
  common_tags       = local.common_tags
}

module "compute" {
  source = "./modules/compute"

  name                  = local.name
  instance_type         = var.instance_type
  subnet_ids            = module.networking.public_subnet_ids
  security_group_id     = module.security.web_security_group_id
  target_group_arn      = module.load_balancer.target_group_arn
  common_tags           = local.common_tags
}