terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.0"
    }
  }

  backend "s3" {
    bucket = "remote-stat"
    key    = "expense-web-alb-dev"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}