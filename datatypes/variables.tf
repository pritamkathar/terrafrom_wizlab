#file to declear the variables
variable "elb_name"{
  type = string  
}
variable "azs" {
    type = list
}
variable "timeout" {
    type = number
}