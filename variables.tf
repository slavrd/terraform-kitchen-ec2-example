variable "access_key" {}
variable "secret_key" {}
variable "key_name" {}
variable "region" {}
variable "ami" {}
variable "instance_type" {}

variable "vpc_sg_ids" {
  type    = "list"
  default = []
}
