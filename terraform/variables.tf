variable "instance_name" {
  default = "faa-app"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-00f46ccd1cbfb363e"
}

variable "region" {}

variable "ssh-key" {}

variable "vpc_id" {}
