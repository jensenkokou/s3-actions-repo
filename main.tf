module "s3" {
  source = "git@github.com:jensenkokou/s3-backend.git//s3-modules?ref=v1.2.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

# Backend Configuration 
 backend "s3" {
  
  bucket   = "bootcamp32-prod-22"
  key      = "action/terraform.tfstate"
  region   = "us-west-2"
  encrypt = true

 }
}

provider "aws" {
  region = "us-west-2"
}
 
  