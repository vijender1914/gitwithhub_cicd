provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_s3_bucket" "testing-bucket" {
    bucket = "testing-bucketxyzz1111" 
}
resource "aws_instance" "app_server" {
  ami           = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
  count         = 2
  tags = {
    Name = "Server${count.index}"
  }

}
