module "myprod-vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.0.0/24"
    availability_zone = "eu-north-1a"
}
module "mydev-vpc" {
    source = " ./modules/vpc"
    vpc_cidr = "192.168.0.0/16"
    public_subnet_cidr = "192.168.0.0/24"
    availability_zone = "eu-north-1a"
}