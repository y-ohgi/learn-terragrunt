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

variable "instance_type" {
  description = "The type of instance to create"
  type = string
  default = "t3.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type = string
}

variable "vpc_security_group_ids" {
  description = "The IDs of the security groups"
  type = list(string)
  default = []
}
