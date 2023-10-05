terraform {
  backend "s3" {
    bucket  = "dapo-demo-s3"
    key     = "demo-vpc.tfstate"
    region  = "us-east-2"
    encrypt = "true"
    dynamodb_table = "dapo-demo-dynamodb"
  }
}
