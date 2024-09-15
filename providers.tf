terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  profile = "jo"
  # Configuration options
}

provider "aws" {
  alias = "central"
  region = "eu-central-1"
  profile = "jo"
  # Configuration options
}