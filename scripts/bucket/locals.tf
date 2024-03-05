locals {
  ip_filepath = "ips.json"
  common_tags = {
    Name        = "Bucket to Index Catalog"
    Service     = "Catalog service"
    ManagedBy   = "Terraform"
    Owner       = "Yara Tavares"
    Environment = var.environment
  }
}
