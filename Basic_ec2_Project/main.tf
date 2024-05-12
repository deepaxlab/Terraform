provider "aws" {
    region = "eu-central-1"  
}

resource "aws_instance" "ec2" {
    ami = "ami-098c93bd9d119c051"
    instance_type = "t2.micro"
    key_name = "aws_linux"
    tags = {
        Name = Terraform
    } 
}