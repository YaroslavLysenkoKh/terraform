#hide creds from all
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  type    = "string"
  default = "us-west-1"
}
