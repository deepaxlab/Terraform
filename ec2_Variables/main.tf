variable "instance" {
  description = "Instance type selected"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
    description = "AMI slected"
    type = string
    default = "ami-098c93bd9d119c051"
}

variable "key" {
    description = "Keypair selected"
    type = string
    default = "aws_linux"
}

provider "aws" {
  region      = "eu-central-1"
}

resource "aws_instance" "Terraform_Variable" {
    ami = var.ami
    instance_type = var.instance
    key_name = var.key
}

output "public_ip" {
    description = "to get the public IP of the ec2 instance"
    value = aws_instance.Terraform_Variable.public_ip  
}