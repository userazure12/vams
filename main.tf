provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" automatedproject-vm" {
  ami           = "ami-074cce78125f09d61"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "test-vm"
  }
}
