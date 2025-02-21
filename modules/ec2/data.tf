data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners = ["amazon"]
  name_prefix = "amzn2-ami-kernel-6.1-*"
}
