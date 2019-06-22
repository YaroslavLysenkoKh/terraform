resource "aws_instance" "main" {
  count                  = ${var.ec2_count}
  ami                    = ${var.ami}
  instance_type          = ${var.instance_type}
  tags                   = { name = "frontend" }
  # private_ip             = ДОБАВИТЬ!
  subnet_id              = ${var.front_subnet_id}
  # vpc_security_group_ids = [aws_security_group.front.id] # ПОМЕНЯТЬ!
  # user_data              = file("install_httpd.sh")
}
