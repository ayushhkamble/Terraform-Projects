#Create a VPC
resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "Terraform-VPC"
    }

}

#Create a Public Subnet
resource "aws_subnet" "my_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true

    tags = {
        Name = "terraform-Public-Subnet"
    }
}

#Create an Internet Gateway
resource "aws_internet_gateway" "my_igw" {
    vpc_id = aws_vpc.my_vpc.id

    tags = {
        Name = "Terraform-IGW"
    }
}

#Create a Route Table
resource "aws_route_table" "my_route_table" {
    vpc_id = aws_vpc.my_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }
    tags = {
        Name = "Terraform-Route-Table"
    }
}

#Associate Route Table with Public Subnet
resource "aws_route_table_association" "my_route_table_assoc" {
    subnet_id = aws_subnet.my_subnet.id
    route_table_id = aws_route_table.my_route_table.id
}