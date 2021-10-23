provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Demo" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "testbranch"
  }
}
