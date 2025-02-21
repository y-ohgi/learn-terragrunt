terraform {
  required_providers {
    aws = {
      source = "opentofu/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}