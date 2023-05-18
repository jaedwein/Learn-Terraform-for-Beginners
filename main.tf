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
