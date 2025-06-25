resource "aws_vpc" "backend-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "tf-backend"
  }
}

