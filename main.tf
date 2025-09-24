terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
terraform {
  backend "s3" {
    bucket         = "terraformbuckettoday121"
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"
  }
}