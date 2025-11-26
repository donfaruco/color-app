output "ec2_public_ip" {
  value = aws_instance.color-app.public_ip
  value = aws_instance.color-app-docker.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.color-app.public_dns
  value = aws_instance.color-app-docker.public_dns
}
