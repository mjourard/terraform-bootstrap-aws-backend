terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 2.15.0"
    }
  }
  required_version = ">= 0.13"
}

provider "aws" {
  default_tags {
    tags = {
      IaC = "terraform"
    } 
  }
}
