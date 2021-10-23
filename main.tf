provider "aws" {
  region = "us-east-1"
}

variable "key_name" {default="linuxserverrr"}
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096

resource "aws_instance" "Demo" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "always-testing"
  }
}