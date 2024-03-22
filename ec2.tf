provider "aws" {
  region     = us-east-1
}

resource "aws_instance" "myec2" {
   ami 			= "ami-080e1f13689e07408"
   instance_type 	= "t2.micro"
}

terraform {
  backend "s3" {
    bucket  = "ishasbucket123"
    key  = ishasbucket123/terraform.tfstate
    region  = "us-east-1"
  }
}
