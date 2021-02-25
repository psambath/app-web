variable "identity" {default = ""}
variable "ami" {default = ""}
variable "subnet_id" {default = ""}
variable "environment" {default = ""}
variable "vpc_security_group_ids" {default = ""}
variable "name" { default = "EC2-default-name"}
provider "aws" {
}

resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    "Identity"    = var.identity
    "Name"        = "Student"
    "Environment" = "Training"
  }
}
