terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.29.1"
    }
  }
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "${var.account}-nakagawa-tfc-test-"
}