terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "local" {}
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
