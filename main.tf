provider "aws" {
  region = "us-east-2"
  access_key = "AKIAY6K553HHG2QPZK7O"
  secret_key = "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"
}
 
resource "aws_instance" automatedproject1-vm" {
  ami           = "ami-074cce78125f09d61"
  instance_type = "t2.micro"
  key_name = "linuxserverrr"
  tags = {
    Name = "vamsi-vm"
  }
}
