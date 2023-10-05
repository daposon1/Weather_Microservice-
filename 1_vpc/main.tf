locals {
  prefix        = "demo"
  vpc_name      = "${local.prefix}-vpc"
  vpc_cidr      = var.vpc_cidr
  common_tags   = {
    Environment = "dev"
    Project     = "demo-project"
  }
}
