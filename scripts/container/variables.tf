variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "tf01"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0e242b0ebd8e91b4c"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    "name"    = "Ubuntu"
    "project" = "catalog-instance"
  }
}
