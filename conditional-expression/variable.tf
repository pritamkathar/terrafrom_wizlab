variable "ec2_ami" {
    type = list
    
}
variable "ec2_type" {
    type = list
    
}
variable "ec_type_map" {
    type = map
  
}
variable "ec2_SG" {
    type = string
}
variable "flag" {
    type = string  
    default = "true"
}