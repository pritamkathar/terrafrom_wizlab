provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZGPTMOZ5WPGWD3QY"
    secret_key = "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"
}


# Create a new load balancer
resource "aws_elb" "terra_elb" {
  name               = var.elb_name
  availability_zones = var.azs



  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }


  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  
  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = var.elb_name
  }
}