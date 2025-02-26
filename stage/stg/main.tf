variable "name" {
  description = "The name of the VPC"
  type = string
}

module "vpc" {
  source = "../../modules/vpc"
  name = var.name
}
