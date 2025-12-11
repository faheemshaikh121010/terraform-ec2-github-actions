variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  default = "ami-068c0051b15cdb816"  # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  default = "t2.micro"
}
