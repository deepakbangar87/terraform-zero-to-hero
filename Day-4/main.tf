provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-0e86e20dae9224db8" # change this
  subnet_id = "subnet-0563377c52ff3478e" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "deepulife" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
