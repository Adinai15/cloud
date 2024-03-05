resource "aws_vpc" "cloud_vpc" {
  cidr_block = "10.0.0.0/24"



tags = {
    name = "cloud_vpc"
}

}


resource "aws_subnet" "public_1a" {
  vpc_id = aws_vpc.cloud_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1"
  cidr_block = "10.0.0.0/26"
}


resource "aws_subnet" "public_1b" {
  vpc_id = aws_vpc.cloud_vpc.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1"
  cidr_block = "10.0.0.64/26"
}