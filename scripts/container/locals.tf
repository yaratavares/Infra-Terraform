locals {
  file_ext = "zip"

  files                 = ["ips.json", "report.csv", "sitemap.xml"]
  file_extensions       = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  instance_number = lookup(var.instance_number, var.environment)

  common_tags = {
    Service     = "Catalog service"
    ManagedBy   = "Terraform"
    Owner       = "Yara Tavares"
    Environment = format("%s", var.environment)
  }
}
