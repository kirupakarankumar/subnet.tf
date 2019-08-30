resource "aws_instance" "webserver" {
  ami = "ami-0**************"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public1.id}"
  security_groups  = ["${aws_security_group.kk.id}"]

  tags {
    Name = "webserver1"
  }

}
