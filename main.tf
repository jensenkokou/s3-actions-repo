module "s3" {
  source = "git@github.com:jensenkokou/s3-backend.git//s3-modules?ref=v1.1.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

 backend "s3" {
    bucket = "landmark-automation-jensen"
    key    = "action/terraform.tfstate"
    region = "us-west-1" # region im creating my backend in 
    encrypt = true
  }
}