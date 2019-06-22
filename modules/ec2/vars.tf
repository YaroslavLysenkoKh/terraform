variable "ami" {
  type    = "string"
  default = "ami-08949fb6466dd2cf3"
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "ec2_count" {
  default = 1
}
variable "subnet_id" {}
