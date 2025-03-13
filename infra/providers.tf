provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Env = "test"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "lockwood-platform-state"
    key    = "envs/production/terraform.tfstate"
    region = "eu-west-2"
  }
}
