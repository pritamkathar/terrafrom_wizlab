//varibales for SG
variable "ifp" {
    default = 443
}
variable "itp" {
    default = 443
}
variable "iproto" {
    default = "tcp"
}
variable "ip_range" {
    default= "49.36.56.123/32"
}
//variables for EC2
variable "ec2_ami" {
    default = "ami-05972b154774b3b6c"
}
variable "ec2_type" {
    default = "t2.micro"
  
}
variable "ec2_SG" {
    default = "sg-095bfed25b8d8bfbb"
}