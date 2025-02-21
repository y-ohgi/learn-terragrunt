data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*" ]
  }
}
