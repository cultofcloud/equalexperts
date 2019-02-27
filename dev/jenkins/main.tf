# import VPC resource
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config {
    bucket = "petclinic-terraform-states"
    key    = "dev/vpc.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}

# Creating an EC2 Instance for Jenkins

module "jenkins-ec2" {
  source = "../../modules/ec2Instance/ec2"

  name                   = "${var.name}"
  subnet_ids             = "${data.terraform_remote_state.vpc.subnet_public}"
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = "${module.instance-sg.instance-sg}"
  user_data              = "${file("user-data.sh")}"
}