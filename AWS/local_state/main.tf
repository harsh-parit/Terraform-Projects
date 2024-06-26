terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
     required_version = ">=1.2.0"
}

# Configure the AWS provider
provider "aws" "Terraform-example" {
    region = "ap-southeast-2"
}

# Create a VPC 
resource "aws_vpc" "Terraform-example" {
    cidr_block = "10.0.0.0/16"
  
}

# instance configurations
resource "aws_instance" "Terraform-example" {
    ami = "ami-0cf2b4e024cdb6960"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform-example"
    }
  
}
