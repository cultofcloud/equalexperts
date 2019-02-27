# Creates a load balancer to serve traffic to Application Node -- Internet Facing

resource "aws_elb" "appserver" {
  name                  = "petclinic-appserver-elb"
  subnets               = ["${data.terraform_remote_state.vpc.subnet_public}"]
  security_groups       = ["${module.instance-sg.instance-sg}"]

  listener {
    instance_port       = 80
    instance_protocol   = "http"
    lb_port             = 80
    lb_protocol         = "http"
  }

  health_check {
    healthy_threshold   = 10
    unhealthy_threshold = 2
    timeout             = 5
    target              = "TCP:80"
    interval            = 30
  }

  instances             = ["${module.AppServer-ec2.id}"]

  tags = {
    Name = "${var.name}-elb"
  }
}