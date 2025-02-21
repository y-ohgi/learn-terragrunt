resource "aws_security_group" "this" {
  vpc_id = var.vpc_id

  name = var.name
  description = var.description

  tags = merge(var.tags, {
    Name = var.name
  })
}

resource "aws_security_group_rule" "ingress" {
  count = length(var.ingress_rules)

  type = "ingress"

  security_group_id = aws_security_group.this.id

  cidr_blocks = lookup(var.ingress_rules[count.index], "cidr_blocks")

  from_port   = lookup(var.ingress[count.index], "port")
  to_port     = lookup(var.ingress[count.index], "port")
  protocol    = lookup(var.ingress[count.index], "protocol")
  description = var.name
}

resource "aws_security_group_rule" "ingress_with_security_group" {
  count = length(var.ingress_with_security_group_rules)

  type = "ingress"

  security_group_id = aws_security_group.this.id

  source_security_group_id = lookup(var.ingress_with_security_group_rules[count.index], "source_security_group_id")

  from_port   = lookup(var.ingress_with_security_group_rules[count.index], "port")
  to_port     = lookup(var.ingress_with_security_group_rules[count.index], "port")
  protocol    = lookup(var.ingress_with_security_group_rules[count.index], "protocol")
  description = var.name
}

resource "aws_security_group_rule" "egress" {
  type = "egress"

  security_group_id = aws_security_group.this.id

  from_port = 0
  to_port   = 0
  protocol  = "-1"

  cidr_blocks = ["0.0.0.0/0"]
}
