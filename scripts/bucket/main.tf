
terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "tf01"
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-to-index-catalog-123"

  tags = {
    Name        = "Bucket to Index Catalog"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    OwnerBy     = "Yara Tavares"
    UpdateAt    = "2024-03-03"
  }
}
