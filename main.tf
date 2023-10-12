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
}
 