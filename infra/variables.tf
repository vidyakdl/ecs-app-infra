data "aws_caller_identity" "current" {}

data "aws_ecr_image" "app_image" {
  repository_name = "test-app"
  image_tag       = "latest"
}

data "aws_region" "current" {}

variable "app_name" {
  type    = string
  default = "lkwd-test-app"
}

variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "subnet_cidr_apps_a" {
  type    = string
  default = "10.0.0.0/19"
}

variable "subnet_cidr_dbs_a" {
  type    = string
  default = "10.0.96.0/19"
}

variable "subnet_cidr_dbs_b" {
  type    = string
  default = "10.0.128.0/19"
}

variable "subnet_cidr_dbs_c" {
  type    = string
  default = "10.0.160.0/19"
}

variable "subnet_cidr_public_a" {
  type    = string
  default = "10.0.192.0/20"
}

variable "subnet_cidr_public_b" {
  type    = string
  default = "10.0.208.0/20"
}

variable "subnet_cidr_public_c" {
  type    = string
  default = "10.0.224.0/20"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
