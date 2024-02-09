locals {
  ip_filepath = "ips.json"

  instance_number = lookup(var.instance_number, var.environment)

  common_tags = {
    Service     = "Catalog service"
    ManagedBy   = "Terraform"
    Owner       = "Yara Tavares"
    Environment = "dev"
  }
}
