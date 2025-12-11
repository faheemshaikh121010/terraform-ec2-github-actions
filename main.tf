terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  #backend "local" {}
  backend "s3" {
    bucket         = "terraform-state-faheem-1210"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true   # replaces dynamodb_table
    
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "demo" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "GitHubActions-EC2"
  }
}
