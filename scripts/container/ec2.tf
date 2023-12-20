resource "aws_instance" "web" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = merge(local.common_tags, {
    "Name" = format("Instance %d", count.index + 1)
  })
}

resource "aws_instance" "this" {
  for_each = {
    web = {
      name = "Web server"
      type = "t3.micro"
    }

    ci_cd = {
      name = "CI/CD server"
      type = "t3.micro"
    }
  }

  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(each.value, "type", null)

  tags = merge(local.common_tags, {
    "Name" = "${each.key}: ${lookup(each.value, "name", null)}"
  })
}
