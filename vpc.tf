resource "aws_vpc" "veeru_vpc" {
    cidr_block = var.vpc_cidr_block
    #instance_tenancy = "default"
   
}

resource "aws_subnet" "public_subnet_block" {
    vpc_id =  aws_vpc.veeru_vpc.id
    cidr_block = var.public_subnet_block
    availability_zone = "us-east-1a"

    tags = {
      "subnetpub" = "publicsubnet"
    }
}

resource "aws_subnet" "private_subnet_block" {
    vpc_id = aws_vpc.veeru_vpc.id
    cidr_block = var.private_subnet_block
    availability_zone = "us-east-1b"

    tags = {
      "subnetpri" = "privatesubnet"
    }
  
}