variable "ami" {
  type    = "string"
  default = "ami-098bb5d92c8886ca1"
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "ec2_count" {
  default = 1
}
variable "front_subnet_id" {}
