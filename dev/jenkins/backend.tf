# backend storage of state files
terraform {
  backend "s3" {
    bucket = "petclinic-terraform-states"
    key    = "dev/jenkins.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}