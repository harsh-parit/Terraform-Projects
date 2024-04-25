terraform {
    required_providers {
        aws = {
            source = "hasicorp/aws"
            version = "4.0"
        }
    }
     required_version = "1.2.0"
}

# Configure the AWS provider
resource "aws" "Terraform-example" {
    region = "ap-southeast-2"
}

# Create a VPC 
resource "aws_vpc" "Terraform-example" {
    cidr_block = "10.0.0.0/16"
  
}

# instance configurations
resource "aws_instance" "Terraform-example" {
    ami = "ami- 0dcc1e21636832c5d"
    instance_type = "t2.micro"

    tags = {
        Name = Terraform-example
    }
  
}
