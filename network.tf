resource "aws_vpc" "vpc_terraform" {
  cidr_block           = "${var.vpc_terraform_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "terraform-aws-vpc"
  }
}

resource "aws_subnet" "subnet_terraform" {
  cidr_block        = "${var.vpc_terraform_subnet}"
  vpc_id            = "${aws_vpc.vpc_terraform.id}"
  availability_zone = "us-east-1a"
}
