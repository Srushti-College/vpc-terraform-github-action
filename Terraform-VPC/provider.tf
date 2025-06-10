terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }

  backend "s3" {
    bucket = "kupa-1"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}


provider "aws" {
  region = "us-east-1"
}