resource "aws_instance" "web" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = merge(local.common_tags, {
    "Name" = format("Instance %d", count.index + 1)
  })
}
