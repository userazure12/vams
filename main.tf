provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "automatedproject-vpc" {
  cidr_block = "10.0.0.0/16"
  tag = {
      Name = "test-vpc"
  }
}

resource "aws_subnet" "automatedproject-subnet" {
    vpc_id = aws_vpc.automatedproject-vpc.id
    cidr_block = "10.0.10.0/24"
    tag = {
          Name = "test-subnet"
    } 
}

resource "aws_instance" automatedproject-vm" {
  ami           = "ami-074cce78125f09d61"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "test-vm"
  }
}
