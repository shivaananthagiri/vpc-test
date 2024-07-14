terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
  backend "s3" {
    bucket = "practice-aws-devops"
    # key    = "give/path/to/store_tfstate_file"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "practice-aws-devops-locking"
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}
