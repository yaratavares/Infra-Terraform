terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.1"
    }
  }

  backend "s3" {}
}

data "aws_caller_identity" "current" {}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
