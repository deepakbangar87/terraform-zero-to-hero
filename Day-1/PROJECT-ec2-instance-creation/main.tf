provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0e86e20dae9224db8"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0563377c52ff3478e"
}
