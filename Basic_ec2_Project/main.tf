provider "aws" {
    region = "eu-central-1"             # region of instance, in this case its frankfurt
}

resource "aws_instance" "Terraform" {
    ami = "ami-098c93bd9d119c051"       # Ubuntu ami selected 
    instance_type = "t2.micro"          # t2.micro selected
    key_name = "aws_linux"              # uses my aws_linux.pem key for log in 
    tags = { 
        Name = "Terraform"              # creates instance name to Terraform 
        }
}

output "public-ip-address" {
  value = aws_instance.Terraform.public_ip
}
