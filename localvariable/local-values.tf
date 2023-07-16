provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZGPTMOZ5WPGWD3QY"
    secret_key = "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"
}
locals {
  comman_tags = {
    owner = "Pritam"
    service = "IT"
  }
}
resource "aws_ebs_volume" "ebs" {
  availability_zone = "ap-south-1"
  size              = 40

 tags = local.comman_tags
  
}