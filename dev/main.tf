provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}
module "our_vpc" {
  source = "../modules/vpc"
  vpc_id = "${module.our_vpc.vpc_id}"
}

module "instances" {
  source    = "../modules/ec2"
  subnet_id = "${module.our_vpc.front_subnet}"
}
