variable "aws_account" {}

provider "aws" {
  region = "ap-northeast-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.aws_account}:role/tfcloud-test-role"
    session_name = "terraform"
  }
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "${var.aws_account}-tfcloud-test"
}