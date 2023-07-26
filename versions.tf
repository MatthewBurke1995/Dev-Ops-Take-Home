terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY

  default_tags {
    tags = {
      Name = "architect-demo"
    }
  }

}
