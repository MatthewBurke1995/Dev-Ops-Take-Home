terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "devops-take-home-state"
    key = "global/s3/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "devops-take-home-locks"
    encrypt = true
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
