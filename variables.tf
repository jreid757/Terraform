variable "aws_region" {
  type    = string
  default = "us-east-1"
}
<<<<<<< HEAD

=======
>>>>>>> c0f6b66 (benefits of terraform state)
variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}
<<<<<<< HEAD

=======
>>>>>>> c0f6b66 (benefits of terraform state)
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
<<<<<<< HEAD

=======
>>>>>>> c0f6b66 (benefits of terraform state)
variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}
<<<<<<< HEAD

=======
>>>>>>> c0f6b66 (benefits of terraform state)
variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> c0f6b66 (benefits of terraform state)
