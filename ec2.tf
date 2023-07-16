provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZGPTMOZ5WPGWD3QY"
    secret_key = "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"
}

resource "aws_instance" "LBA" {
  ami = var.ec2_ami
  instance_type = var.ec2_type
  vpc_security_group_ids = [var.ec2_SG]
  user_data = file("userData/usrdata1.sh")    
    tags = {
       Name = "LBA"
    }
}

resource "aws_instance" "LBB" {
  ami = var.ec2_ami
  instance_type = var.ec2_type
  user_data = file("userData/usrdata2.sh") 
  vpc_security_group_ids = [var.ec2_SG]
    tags = {
       Name = "LBB"
    }
}
