terraform {
  backend "s3" {
    bucket = "dhiraj-tf-state"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}