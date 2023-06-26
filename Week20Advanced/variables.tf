variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "security_group_name" {
  description = "Name of the security group"
  default     = "Week20SG"
}

variable "vpc_id" {
  description = "ID of the VPC"
  default     = "vpc-00821b9cce139e7b8"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "LevelUpKeys"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default     = "s3-week20bucket"
}

variable "s3_bucket_tags" {
  description = "Tags for the S3 bucket"
  default = {
    Name        = "Jenkins Artifacts Bucket"
    Environment = "Dev"
  }
}
