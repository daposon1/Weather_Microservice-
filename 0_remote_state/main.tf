locals {
  aws_region = "us-east-2"
  prefix     = "dapo-demo"
  ssm_prefix = "/org/dapo-demo/terraform"
  common_tags = {
    Project   = "demo-project"
    ManagedBy = "Terraform"
  }
}
