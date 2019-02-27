/*
Gateway and NAT
*/

# =================================================
# Internet GW
resource "aws_internet_gateway" "inet-gw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.vpc_name}-inet-gw"
  }
}

# =================================================
# NAT GW

resource "aws_eip" "nat" {
  vpc   = true
}

resource "aws_nat_gateway" "nat-gw-public" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public.id}"
  depends_on    = ["aws_internet_gateway.inet-gw"]
  tags = {
    Name = "${var.vpc_name}-NAT"
  }
}

