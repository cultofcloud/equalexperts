#output variables
#---------------------------------

output "id" {
  value = "${aws_instance.web.id}"
}

output "private_ip" {
  value = "${aws_instance.web.private_ip}"
}
