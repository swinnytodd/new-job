provider "aws" {
  region = var.region
}

resource "aws_default_vpc" "default" {} # This need to be added since AWS Provider v4.29+ to get VPC id

resource "aws_instance" "my_server_web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  key_name               = "aws_key"
  vpc_security_group_ids = [aws_security_group.ansible.id]
  user_data              = file("user_data.sh")
  tags                   = var.my_server_web_tags
}

resource "aws_instance" "ubuntu_server" {
  ami                    = data.aws_ami.latest_ubuntu.id
  instance_type          = var.instance_type_large
  key_name               = "aws_key"
  vpc_security_group_ids = [aws_security_group.ansible.id]
  tags                   = var.ubuntu_web_tags

}

resource "aws_security_group" "ansible" {
  name   = "Security Group Ansible"
  vpc_id = aws_default_vpc.default.id # This need to be added since AWS Provider v4.29+ to set VPC id


  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "My SecurityGroup Ansible"
  }
}