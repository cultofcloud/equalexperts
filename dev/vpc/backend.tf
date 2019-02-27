# Storing the state files backend - s3
#-------------------------------------

terraform {
  backend "s3" {
    bucket = "petclinic-terraform-states"
    key    = "dev/vpc.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock" # DynamoDB Table
  }
}