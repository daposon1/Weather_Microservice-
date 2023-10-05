terraform {
  backend "s3" {
    bucket  = "dapo-demo-s3"
    key     = "demo-eks-cluster-autoscaler.tfstate"
    region  = "us-east-2"
    encrypt = "true"
    dynamodb_table = "dapo-demo-dynamodb"
  }
}
