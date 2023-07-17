# provider "aws" {
#     region = "ap-southeast-1"  
# }

# resource "aws_instance" "app_server" {
#   ami           = "ami-0f74c08b8b5effa56" # ap-southeast-1
#   instance_type = "t2.micro"
#   tags = {
#       Name = "TF-Jenkins"
#   }
# }



terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


//tell which provider. example: aws, azure etc..
provider "aws" {
  region  = "ap-southeast-1"
}


//Create instance one
resource "aws_instance" "app_server" {
#   ami           = "ami-830c94e3"  ami-0f74c08b8b5effa56
  ami           = "ami-0f74c08b8b5effa56" //AMI depends on which region
  instance_type = "t2.micro"

  tags = {
    Name = "TF-Jenkins"
  }
}