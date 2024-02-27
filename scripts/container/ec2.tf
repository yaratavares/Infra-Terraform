resource "aws_instance" "web" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = merge(local.common_tags, {
    "Name" = format("Instance %d", count.index + 1)
  })
}
