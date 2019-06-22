output "vpc_id" {
  value = "${aws_vpc.main_vpc.id}"
}
output "front_subnet_id" {
  value = "${aws_subnet.front_subnet.id}"
}
