terraform {
  required_version = ">= 0.14.2, < 0.15.0"
  backend "s3" {
    bucket = "pjangamtfstate"
    key = "plaground/tfstate-dev"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}