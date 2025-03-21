terraform {

#  backend "s3" {
#    bucket = "beltrame-terraform"
#    key    = "backend"
#    region = "us-east-1"
#  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

