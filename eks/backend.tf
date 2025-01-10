terraform {
  required_version = "~> 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "devops-project-bucket-anil"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "devops-project-table-anil"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
