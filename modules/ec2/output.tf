output "instance_id" {
  description = "The ID of the instance"
  value = aws_instance.this.id
}
