resource "aws_security_group" "var_demo_SG" {
    name = "my_terra_SG"
    description = "SG of terraform variable demo"
    tags = {
        Name = "my_terra_SG"
        ingress = "abc"
    }
  ingress {
    description      = "allow SSL "
    from_port        = var.ifp
    to_port          = var.itp
    protocol         = var.iproto
    cidr_blocks      = [var.ip_range]
    
    
  }
}