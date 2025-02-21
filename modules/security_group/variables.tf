variable "name" {
  description = "The name of the VPC"
  type = string
  default = "example"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type = map(string)
  default = {}
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "description" {
  description = "The description of the security group"
  type = string
  default = "Security group for the VPC"
}

variable "ingress_rules" {
  description = "The ingress rules of the security group"
  type = list(object({
    port = number
    cidr_blocks = list(string)
    protocol = string
  }))
  default = []
}

variable "ingress_with_security_group_rules" {
  description = "The ingress rules of the security group with security group"
  type = list(object({
    port = number
    source_security_group_id = string
    protocol = string
  }))
  default = []
}