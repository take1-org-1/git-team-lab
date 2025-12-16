data "aws_vpc" "take1-dev-vpc" {
  filter {
    name   = "tag:Name"
    values = ["take1-dev-vpc"]
  }
}

data "aws_subnet" "take1-dev-subnet-1a" {
  filter {
    name   = "tag:Name"
    values = ["take1-dev-private-subnet-1a"]
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.take1-dev-vpc.id]
  }
}

data "aws_subnet" "take1-dev-subnet-1b" {
  filter {
    name   = "tag:Name"
    values = ["take1-dev-private-subnet-1b"]
  }
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.take1-dev-vpc.id]
  }
}
