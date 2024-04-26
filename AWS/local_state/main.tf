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

# Data source ami id
data "aws_ami" "ubuntu" {
    most_recent = "true"  

    owners = ["amazon"] 
    filter {
        name = "name"
        values = ["ubuntu/iamges/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240301"]
    }
}

# instance configurations
resource "aws_instance" "Terraform-example" {
    ami = "ami- 0dcc1e21636832c5d"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform-example"
    }
  
}
