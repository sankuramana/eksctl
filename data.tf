data "aws_ami" "joindevops" {
    owners           = ["973714476881"]
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
data "aws_vpc" "roboshop" {
  id = "vpc-0527fb5adea977f11"
}
data "aws_subnet" "public_1" {
  id = "subnet-058a3c3670920308b"
}

data "aws_subnet" "public_2" {
  id = "subnet-09ce2d5b6a9757ca7"
}