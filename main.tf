resource "aws_vpc" "cloud_vpc" {
  cidr_block = "10.0.0.0/24"



tags = {
    name = "cloud_vpc"
}

}