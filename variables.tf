variable "region" {
  default = "ap-south-1"
}

variable "ami" {
  default = "ami-0ecb62995f68bb549"  # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  default = "t2.micro"
}
