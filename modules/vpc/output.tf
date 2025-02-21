output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "The public subnet ids"
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "The private subnet ids"
  value = aws_subnet.private[*].id
}
