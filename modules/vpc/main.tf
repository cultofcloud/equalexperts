/* 
Virtual Private Cloud 
*/

resource "aws_vpc" "main" {
  cidr_block           =  "${var.vpc_cidr_block}"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"

  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}