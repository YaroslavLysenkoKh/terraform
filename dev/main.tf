provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}
module "our_vpc" {
  source                  = "../modules/vpc"
  cidr                    = "default"
  enable_dns_hostnames    = "default"
  enable_dns_support      = "default"
  vpc_id                  = "${module.our_vpc.vpc_id}"
  map_public_ip_on_launch = "default"
  availability_zone       = "default"
}

module "instances" {
  source        = "../modules/ec2"
  count         = 1
  ami           = "default"
  instance_type = "default"
  # private_ip             = ДОБАВИТЬ!!!
  subnet_id = "${module.our_vpc.front_subnet_id}"
  # vpc_security_group_ids = [aws_security_group.front.id]   # ПОМЕНЯТЬ!
  # user_data              = file("install_httpd.sh")
}
