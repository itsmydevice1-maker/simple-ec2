output "aws_instance_ip" {
    value = aws_instance.tf-instance[*].public_ip
  
}

output "instance_dns" {
    value = aws_instance.tf-instance[*].public_dns
  
}