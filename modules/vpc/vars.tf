variable "cidr" {
  type = "map"
  default = {
    "main"           = "10.0.0.0/16"
    "public_subnet"  = "10.0.0.0/24"
    "private_subnet" = "172.0.0.0/24"
    "all"            = "0.0.0.0/0"
  }
}
variable "enable_dns" {
  default = true
}
variable "enable_dns_support" {
  default = true
}
variable "vpc_id" {}
variable "public_ip_on_launch" {
  default = true
}
variable "zone" {
  type    = string
  default = "us-west-1a"
}
