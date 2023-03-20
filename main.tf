provider "aws"{
    region = "us-east-1"
    access_key = "AKIA27ZBNVBRKMTOZYBV"
    secret_key = "jOeNb1+JnGlQxSeydkECnYBqxD/H8siWECt9SFLf"
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

