terraform {
  backend "s3" {
    bucket = "testing-bucketxyzz1111"
    key    = "key/terraform.tfstate"
    region = "ap-south-1"
    
  }
}