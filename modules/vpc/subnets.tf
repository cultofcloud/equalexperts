/*
Creates Subnet in the vpc
*/

# =============================================
# Public Subnets

resource "aws_subnet" "public" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.vpc_cidr_pub_sub}"
  availability_zone = "${var.pub_az_zone}"
  map_public_ip_on_launch = true

  tags {
    Name = "${var.vpc_name}-pub-subnet"
  }
}

# =============================================
# Private Subnets

resource "aws_subnet" "private" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.vpc_cidr_priv_sub}"
  availability_zone = "${var.priv_az_zone}"

  tags {
    Name = "${var.vpc_name}-priv-subnet"
  }
}