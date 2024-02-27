locals {
  ip_filepath = "ips.json"

  file_ext = "zip"

  instance_number = lookup(var.instance_number, var.environment)

  common_tags = {
    Service     = "Catalog service"
    ManagedBy   = "Terraform"
    Owner       = "Yara Tavares"
    Environment = format("%s", var.environment)
  }
}
