# output variables
#---------------------------------

output "vpc_id" {
  value = "${module.dev-vpc.vpc_id}"
}

output "subnet_public" {
  value = "${module.dev-vpc.subnet_public}"
}

output "subnet_private" {
  value = "${module.dev-vpc.subnet_private}"
}