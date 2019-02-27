#output variables
#---------------------------------

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "subnet_public" {
    value = "${aws_subnet.public.id}"
}

output "subnet_private" {
    value = "${aws_subnet.private.id}"
}