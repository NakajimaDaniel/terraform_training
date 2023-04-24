terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  
  backend "s3" {
    bucket = "terraformstate-0102"
    key = "dev/bank/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraformstate-0102"
  } 

}
