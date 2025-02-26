variable "name" {
  description = "The name of the VPC"
  type = string
}

module "vpc" {
  source = "../../modules/vpc"
  name = var.name
}

module "security_group" {
  source = "../../modules/security_group"
  name = var.name
  vpc_id = module.vpc.vpc_id
  ingress_rules = [
    {
      port = 80
      cidr_blocks = ["0.0.0.0/0"]
      protocol = "tcp"
    }
  ]
}

module "ec2" {
  source = "../../modules/ec2"
  name = var.name
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids = [module.security_group.security_group_id]
}
