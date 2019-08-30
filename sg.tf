resource "aws_security_group" "kk" {
  name        = "kk"
  description = "Security group to allow access for vpc"
  vpc_id      = "${var.vpc_id}"

  tags {
    Name = "kk"
  }
}

resource "aws_security_group_rule" "kk__allow_ingress_ssh" {
  # HTTP access from anywhere
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kk.id}"
}

resource "aws_security_group_rule" "kk_allow_ingress_http" {
  # outbound access
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kk.id}"
}

resource "aws_security_group_rule" "kk_allow_egress_https" {
  # outbound access
  type              = "egress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.kk.id}"
}

output "sg_id" {
  value = "${aws_security_group.kk.id}"
}
