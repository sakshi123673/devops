provider "aws" {
region = "ap-southeast-2"
access_key = "AKIAXFOFGNIUPPTVWIUX"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "oct19"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
