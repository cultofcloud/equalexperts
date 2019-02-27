output "id" {
  value = "${module.AppServer-ec2.id}"
}

output "private_ip" {
  value = "${module.AppServer-ec2.private_ip}"
}

output "instance-sg" {
    value = "${module.instance-sg.instance-sg}"
}