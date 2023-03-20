provider "aws"{
    region = "us-east-1"
    access_key = "AKIA27ZBNVBRH3JRFDHG"
    secret_key = "iuKFrGQOdo5OYfF/tJRTZ0xW3a5j2s8pUmqZqQAH"
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

