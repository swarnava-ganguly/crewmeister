

terraform {
  backend "s3" {
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.9"
    }
  }
  required_version = ">= 0.12"
}


provider "aws" {
    alias = "aws"
    region = "us-east-1"
}