
# Input variable for instance type
variable "instance" {
  description = "Instance type selected"
  type        = string
  default     = "t2.micro"
}

# Input variable for AMI ID
variable "ami" {
    description = "AMI selected"
    type = string
    default = "ami-098c93bd9d119c051"
}

# Input variable for KeyPair selected
variable "key" {
    description = "Keypair selected"
    type = string
    default = "aws_linux"
}

# AWS provider selected
provider "aws" {
  region      = "eu-central-1"
}

# Defining the resources using input variables 
resource "aws_instance" "Terraform_Variable" {
    ami = var.ami
    instance_type = var.instance
    key_name = var.key
}
# Provides Public IF after creating the ec2 instance
output "public_ip" {
    description = "to get the public IP of the ec2 instance"
    value = aws_instance.Terraform_Variable.public_ip  
}