resource "aws_ec2_instance" "test" {}

module "s3" {
  source = "git@github.com:jensenkokou/s3-backend.git//s3-modules?ref=v1.1.0"
}