terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
data "aws_vpc" "selected" {
  id = "vpc-YourOwnVpcId"
}
# Create an instance
resource "aws_instance" "NameOfYourInstance" {
  ami = "ami-FromMarketPlace"
  instance_type = "t2.micro"
  subnet_id = "subnet-YourOwnSubnet"
  security_groups = ["sg-YourOwnSubGroup"]
  associate_public_ip_address = true
  key_name = "TheNameOfYourKeys"
  tags = {
    Name = "NameOfYourInstance"
  }
}