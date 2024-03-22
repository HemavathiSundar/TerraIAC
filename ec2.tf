provider "aws" {
  region     = var.region
}

resource "aws_instance" "myec2" {
   ami 			= "ami-080e1f13689e07408"
   instance_type 	= "t2.micro"
}

terraform {
  backend "s3" {}
}
