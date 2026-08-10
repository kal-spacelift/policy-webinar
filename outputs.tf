output "instance_id" {
  value = aws_instance.demo.id
}

output "security_group_id" {
  value = aws_security_group.demo.id
}
