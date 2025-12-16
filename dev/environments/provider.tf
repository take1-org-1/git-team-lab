# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  #alias   = "use-1"
  profile = "kitaPrivate"
  region  = "us-east-1"
}

provider "aws" {
  alias   = "tokyo"
  profile = "kitaPrivate"
  region  = "ap-northeast-1"
}

