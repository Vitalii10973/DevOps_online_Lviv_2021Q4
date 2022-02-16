provider "aws" {
  shared_credentials_files = ["/var/jenkins_home/credentials"]
  region     = "eu-west-3"
}

resource "aws_instance" "my_webubuntu" {
    ami     = "ami-0c6ebbd55ab05f070"
    instance_type = "t2.micro"
    key_name = "paris"
    vpc_security_group_ids = [aws_security_group.my_webserver108.id]
    tags = {
      Name = "Web-target"
    }
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_webubuntu.id
  public_ip     = data.aws_eip.by_tags.public_ip
}


resource "aws_security_group" "my_webserver108" {
  name        = "WebServer Security Group 108"
  description = "My securiti group"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

data "aws_eip" "by_tags" {
  tags = {
    Name = "WebServer"
  }
}

output "aws_eip" {
  value = data.aws_eip.by_tags.public_ip
}

