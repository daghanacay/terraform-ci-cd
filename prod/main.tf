module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "192.169.0.0/16"
    tenancy = "default"
    vpc_id = module.my_vpc.vpc_id
    subnet_cidr = "192.169.1.0/24"
}

module "my_ec2" {
    source = "../modules/ec2"
   ec2_count = "1"
   ami_id="ami-051a81c2bd3e755db"
   instance_type = "t3.micro"
   subnet_id= module.my_vpc.subnet_id
   aws_security_group_id = module.my_vpc.aws_security_group_id
}