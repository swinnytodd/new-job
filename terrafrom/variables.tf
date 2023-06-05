variable "region" {
  description = "AWS-Region"
  type        = string
  default     = "eu-west-2"
}

variable "latest_amazon_linux" {
  description = "Latest Amazon linux"
  default     = "amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"

}
variable "latest_ubuntu_ami_name" {
  description = "Latest Ubuntu"
  default     = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"

}

variable "my_server_web_tags" {
  type = map(any)
  default = {
    Name = "Amazon-Ansible-Test"
  }
}

variable "ubuntu_web_tags" {
  type = map(any)
  default = {
    Name = "Ubuntu-Test"
  }
}


variable "instance_type" {
  default = "t2.micro"
}

variable "instance_type_large" {
  default = "t2.micro"
}

variable "allow_ports" {
  description = "List of ports"
  type        = list(any)
  default     = ["80", "22", "443", "8080", "5000", "3000","5555", "3306","33060"]

}

