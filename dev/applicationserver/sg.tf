/*
  Description: Creates security group for EC2 Instances
*/

# SG for AppServer instances
module "instance-sg" {
  source = "../../modules/ec2Instance/sg"

  vpc         = "${data.terraform_remote_state.vpc.vpc_id}"
  name        = "${var.name}-sg"
  description = "${var.description}"
}
