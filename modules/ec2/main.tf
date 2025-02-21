resource "aws_instance" "this" {
  ami = data.aws_ami.amazon_linux_2023.id

  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = merge(var.tags, {
    Name = "ec2-${var.name}"
  })
}