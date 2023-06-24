# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Resource Block

resource "aws_security_group" "Week20SG" {
  name        = "Week20SG"
  description = "Allow inbound traffic, SSH, Jenkins"
  vpc_id      = "vpc-00821b9cce139e7b8"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "Jenkins"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "SSH from my IP"
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

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "LevelUpKeys"
  vpc_security_group_ids = ["Week20SG"]
  tags = {
    Name = "Week20Project"
  }


#User Data in AWS EC2
    user_data = file("script.sh")
    
}

#Private S3 Bucket
resource "aws_s3_bucket" "s3-week20bucket" {
  bucket = "s3-week20bucket"

  tags = {
    Name        = "Jenkins Artifacts Bucket"
    Environment = "Dev"
  }
}