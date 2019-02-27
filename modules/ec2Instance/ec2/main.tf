/*
  Description: Creates EC2 Instances
*/

resource "aws_instance" "web" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${var.subnet_ids}"
  user_data              = "${var.user_data}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  tags = {
    Name = "${var.name}"
  }
}