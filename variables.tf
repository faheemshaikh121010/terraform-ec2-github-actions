variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  default = "ami-00ca570c1b6d79f36"  # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  default = "t2.micro"
}
