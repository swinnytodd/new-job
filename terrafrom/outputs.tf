output "my_server_ip_amazon" {
  value = aws_instance.my_server_web.public_ip
}
output "my_server_ip_ubuntu" {
  value = aws_instance.ubuntu_server.public_ip
}

output "my_instance_id_amazon" {
  value = aws_instance.my_server_web.id
}

output "my_instance_id_ubuntu" {
  value = aws_instance.ubuntu_server.id
}
output "my_sg_id" {
  value = aws_security_group.ansible.id
}