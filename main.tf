provider "aws" {
    region = "ap-southeast-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-0f74c08b8b5effa56" # ap-southeast-1
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Jenkins"
  }
}