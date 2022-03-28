resource "aws_vpc" "veeru_vpc" {
    cidr_block = var.vpc_cidr_block
    instance_tenancy = "default"

    tags = {
      "pradeep" = "veeramruth"
    }
  
}