terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }

}

provider "aws" {
    region = "us-west-2"
  
}

resource "aws_instance" "app_server" {
    ami = "ami-0ecb0bb5d6b19457a"

    instance_type = "t2.micro"

    tags = {
        Name = "App_Server"
    }
}