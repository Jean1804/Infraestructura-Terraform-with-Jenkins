provider "aws"{
    region = "us-east-1"
    access_key = "AKIA27ZBNVBRFRLU6SXD"
    secret_key = "x3y/C8728KmA74kVBZ5iZKT0jbIJwlvKdPmd8Gu2"
}


resource "aws_instance" "example" {
    ami = "ami-005f9685cb30f234b"
    instance_type = "t2.micro"
    security_groups = ["default"]
    key_name = "Accesskey"
    tags = {
        Name = "Instance Terraform"
    }  
}

