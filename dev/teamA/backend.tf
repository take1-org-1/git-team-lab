# ---------------------------------------------
# backend
# ---------------------------------------------
terraform {
  required_version = ">=1.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "take1-tfstate-bucket"
    #key     = "take1-project-dev.tfstate"
    key = "tfstate/kita-s3a/kita-s3.tfstate"
    #key            = "tfstate/take1-project/kita-s3/kita-s3.tfstate"
    region  = "us-east-1"
    profile = "kita-sso"
    #dynamodb_table = "take1-terraform-lock"
    use_lockfile = true
  }

}

