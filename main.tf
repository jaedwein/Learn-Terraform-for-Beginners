# https://www.youtube.com/watch?v=iRaai1IBlB0&t=1s
# https://developer.hashicorp.com/terraform/language/state

resource "aws_vpc" "mtc_vpc" {
  cidr_block           = "10.128.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "Dev"
  }
}

resource "aws_subnet" "mtc_public_subnet" {
    vpc_id = aws_vpc.mtc_vpc.id
    cidr_block = "10.128.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1c"

    tags = {
      Name = "dev-public-subnet"
    }
}