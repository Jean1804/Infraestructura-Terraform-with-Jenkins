provider "aws"{
    region = "us-east-1d"
    access_key = "AKIA27ZBNVBRBHPYGJ6P"
    secret_key = "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"
}

resource "aws_eip" "web" {
  vpc = true
}

resource "aws_instance" "web" {
    ami = "ami-005f9685cb30f234b"
    instance_type = "t2.micro"
    key_name = "Accesskey"
    vpc_security_group_ids = [aws_security_group.web.id]
    associate_public_ip_address = true

    tags = {
        Name = "Instance Terraform"
    }  
}

resource "aws_security_group" "web" {
  name_prefix = "web"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
