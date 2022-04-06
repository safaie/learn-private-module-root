terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/safaie/s3-webapp/aws"
  version = "1.0.0"
  name        = var.name
  region = var.region
  prefix = var.prefix
}
