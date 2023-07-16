provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZGPTMOZ5WPGWD3QY"
    secret_key = "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"
}
resource "aws_instance" "prod_env" {
  ami = var.ec2_ami[0]
  instance_type = var.ec_type_map["in_type_na"]
  vpc_security_group_ids = [var.ec2_SG]
  //user_data = file("userData/usrdata1.sh")    
    tags = {
       Name = "prod"
    }
    count = var.flag == true ? 2 : 0
}

resource "aws_instance" "acc_env" {
  ami = var.ec2_ami[1]
  instance_type = var.ec_type_map["in_type_mi"]
  //user_data = file("userData/usrdata2.sh") 
  vpc_security_group_ids = [var.ec2_SG]
    tags = {
       Name = "acc"
    }
    count = var.flag == true ? 3 : 0
}
