module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "5.1.2"

    name = "vpc-demo"
    cidr = "10.0.0.0/16"
    azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

    create_database_subnet_group = true
    create_database_subnet_route_table = true
    database_subnets = ["10.0.151.0/24", "10.0.152.0/24", "10.0.153.0/24"]

    enable_nat_gateway = true
    single_nat_gateway = true

    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "vpc-demo"
        Terraform = "true"
        Environment = "dev"
    }
}
