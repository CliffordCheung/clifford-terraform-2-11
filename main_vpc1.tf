module "vpc1" {
  source = "terraform-aws-modules/vpc/aws"
  name = "clifford-module-vpc1"
  cidr = "10.1.0.0/16"
  azs = data.aws_availability_zones.available.names
  public_subnets = ["10.1.101.0/24","10.1.102.0/24","10.1.103.0/24"]
  enable_dns_hostnames = true
  tags = {
    Terraform = "true"
  }
}



