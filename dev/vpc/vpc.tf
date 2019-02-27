/*
Create VPC
*/

module "dev-vpc" {
  source = "../../modules/vpc"

  vpc_name          = "equalexperts"
  vpc_cidr_block    = "172.20.0.0/16"
  vpc_cidr_pub_sub  = "172.20.10.0/24"
  vpc_cidr_priv_sub = "172.20.20.0/24"
  pub_az_zone       = "ap-south-1a" 
  priv_az_zone      = "ap-south-1a"
  env               = "dev"
}