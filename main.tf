terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-unique-bucket-name-1234"  # must be globally unique

  tags = {
    Name        = "demo-bucket"
    Environment = "dev"
  }
}