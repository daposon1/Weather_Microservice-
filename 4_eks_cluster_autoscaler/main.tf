locals {
  remote_state_bucket_region    = "us-east-2"
  remote_state_bucket           = "dapo-demo-s3"
  vpc_state_file                = "demo-vpc.tfstate"
  eks_state_file                = "demo-eks-cluster.tfstate"

  prefix          = data.terraform_remote_state.vpc.outputs.prefix
  common_tags     = data.terraform_remote_state.vpc.outputs.common_tags
  vpc_id          = data.terraform_remote_state.vpc.outputs.vpc_id
  public_subnets  = data.terraform_remote_state.vpc.outputs.public_subnets
  private_subnets = data.terraform_remote_state.vpc.outputs.private_subnets
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = local.remote_state_bucket
    region = local.remote_state_bucket_region
    key    = local.vpc_state_file
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = local.remote_state_bucket
    region = local.remote_state_bucket_region
    key    = local.eks_state_file
  }
}
