terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "wasim-terraform-state"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-3"
  }
  
}


provider "aws" {
  region = var.aws_region
}
