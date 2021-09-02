terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.29.1"
    }
  }
}

variable "account" {}

provider "aws" {
  region = "ap-northeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.account}:role/multiple-provision-test-role"
    session_name = "terraform"
  }
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "${var.account}-nakagawa-tfc-test-"
}