terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket = "fabricio-bucket-terraform-2026-demo"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mi_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
#1ss