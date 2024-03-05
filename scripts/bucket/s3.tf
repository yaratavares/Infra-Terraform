resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = {
    Name        = "Bucket to Index Catalog"
    Service     = "Catalog service"
    ManagedBy   = "Terraform"
    Owner       = "Yara Tavares"
    Environment = var.environment
  }
}
