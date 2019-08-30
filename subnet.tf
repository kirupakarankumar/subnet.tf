resource "aws_subnet" "public1" {
  vpc_id                  = "vpc-06e7a93890184957b"
  cidr_block              = "172.31.0.0/16"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2a"

  tags {
    Name = "public1"
  }
}
