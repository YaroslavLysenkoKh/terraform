resource "aws_vpc" "main-vpc" {
  cidr_block           = var.cidr["main"]
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = {
    Name = "MAIN_VPC"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id
}

resource "aws_subnet" "front_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr["public_subnet"]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone
  depends_on              = ["aws_internet_gateway.gw"]
  tags {
    Name = "front_subnet"
  }
}
