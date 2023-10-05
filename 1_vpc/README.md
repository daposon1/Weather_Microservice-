<!-- BEGIN_TF_DOCS -->

# Base infrastructure - VPC, Subnets, NAT GW

This is a demo repository for the [How to Set Up Amazon EKS Cluster Using Terraform]

This module sets up the following AWS services:

* VPC (2 private, 2 public subnets, 2 NAT Gateways)

![VPC infrastructure]

## Deployment

```sh
terraform init
terraform plan
terraform apply -auto-approve
```

## Tier down

```sh
terraform destroy -auto-approve
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region to deploy VPC | `string` | `"us-east-1"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Common prefix for AWS resources names | `string` | `"managing-eks-terraform"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | AWS VPC CIDR range | `string` | `"10.10.0.0/16"` | no |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | Exported common resources tags |
| <a name="output_prefix"></a> [prefix](#output\_prefix) | Exported common resources prefix |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | VPC private subnets' IDs list |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | VPC public subnets' IDs list |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
## Providers

No providers.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.9 |
## Resources

No resources.

<!-- END_TF_DOCS -->