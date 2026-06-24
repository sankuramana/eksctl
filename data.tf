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
  id = "vpc-0a3edda9713b06c3b"
}
data "aws_subnet" "public_1" {
  id = "subnet-053b0735446651941"
}

data "aws_subnet" "public_2" {
  id = "subnet-0fb4219d07768788d"
}