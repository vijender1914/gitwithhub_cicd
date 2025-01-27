provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_s3_bucket" "testing-bucket" {
    bucket = "testing-bucketxyzz111"
  
}
    

resource "aws_instance" "app_server" {
  ami           = var.ami_type
  instance_type = var.instance_option
  count         = 2
  tags = {
    Name = "Server${count.index}"
  }

}