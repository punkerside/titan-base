module "vpc" {
  source  = "punkerside/vpc/aws"
  version = "0.0.11"

  name           = "${var.project}-${var.env}"
  cidr_block_vpc = "10.0.0.0/16"
  cidr_block_pri = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  cidr_block_pub = ["10.0.96.0/19", "10.0.128.0/19", "10.0.160.0/19"]
}