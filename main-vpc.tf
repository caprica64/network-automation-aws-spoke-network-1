terraform {
  required_providers {
	aws = {
	  source = "hashicorp/aws"
	  version = "4.20.1"
	}
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-1"
}

locals {
  region = "eu-west-1"
  #region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Spoke1"
  cidr = "10.1.0.0/16"

  azs             = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  # public_subnets  = ["10.0.16.0/24", "10.0.17.0/24", "10.0.18.0/24"]

  enable_nat_gateway = false
  single_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
	Terraform = "true"
	Environment = "dev"
	Project = "Azure-AWS"
  }
}
