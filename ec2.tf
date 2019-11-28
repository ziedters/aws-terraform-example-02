resource "aws_key_pair" "admin" {
   key_name   = "admin"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCV/k0n2AiiESDOLyNsGyFObtv11kNQYEHKUJrcgh2syhu/uCDb5EIlKJ0SWhrAQjwpSNux+mW/AqzvR41tP2LRsmf9lvIn9jLTcZnCtB7UWSTgVF99JI+3Ky8wyEJLlJEZyDmZkYONwZ4U9lsTV172HM1ZIHMK3MxOaX1MCWn1J3jORH16ugXWmUNPnU7e1ps74tQr5BXjsaEVpDZv0YcwjpEktW4jcWgxsZ1pfFRaI0kWhN5juzbz4kTisVlhGbJ9LUpE4oUSUQtx8bleEi5Q+FpV5ELCwcfuwv7dW53l38Fd76jxmBuYzVG6e6woGHZUpTUBJdpkmlXXHqM2CQX7"
 }
 resource "aws_instance" "server1" {
   ami           = "ami-045fa58af83eb0ff4"
   instance_type = "t2.micro"
   key_name      = "admin"
 }
  resource "aws_default_vpc" "default" {
   tags = {
     Name = "Default VPC"
   }
 }