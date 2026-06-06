variable "aws_region" {
    description = "AWS region"
    type        =  string
    default     =  "eu-north-1"
}
variable "vpc_cidr" {
    description = "CIDR block for VPC"
    type        =  string
    default     = "10.0.0.0/16"
}
variable "subnet_cidr" {
    description = "CIDR block for subnet"
    type        =  string
    default     = "10.0.0.0/24"
}
variable "availability_zone" {
    description = "Availability zone for subnet"
    type        =  string
    default     = "eu-north-1a"
}
variable "instance_type" {
    description = "EC2 instance type"
    type        =  string
    default     = "t3.micro"
}
variable "key_name" {
    description = "Existing AWS key pair name"
    type        =  string
    default     = "ayush"
}
