provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Demo" {
  ami           = "ami-074cce78125f09d61"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "testbranch"
  }
}
