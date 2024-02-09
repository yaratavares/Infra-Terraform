variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  default = {
    dev  = 1
    prod = 2
  }

  validation {
    condition     = length(var.instance_number.dev) == 1 && length(var.instance_number.dev) > 1
    error_message = "The instance_number value must be valid number"
  }
}

variable "instance_type" {
  type        = string
  description = ""

  default = "t2.micro"
}
