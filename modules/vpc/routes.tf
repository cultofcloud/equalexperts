/*
Route Table and Association
*/

# Public Route Table and aws_route_table_association
# ==============================================================

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "${var.vpc_name}-public-route"
  }
}

resource "aws_route" "public-default" {
  route_table_id            = "${aws_route_table.public.id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.inet-gw.id}"
}

resource "aws_route_table_association" "pub-subnet" {
  subnet_id      = "${aws_subnet.public.id}"
  route_table_id = "${aws_route_table.public.id}"
}

# Private Route Table and aws_route_table_association
# ==============================================================

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "${var.vpc_name}-private-route"
  }
}

resource "aws_route" "private-default" {
  route_table_id            = "${aws_route_table.private.id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id             = "${aws_nat_gateway.nat-gw-public.id}"
}

resource "aws_route_table_association" "priv-subnet" {
  subnet_id      = "${aws_subnet.private.id}"
  route_table_id = "${aws_route_table.private.id}"
}

