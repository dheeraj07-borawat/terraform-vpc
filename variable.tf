variable "environment" {
  description = "The Deployment environment"
}

variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
}
/*====
variable "public_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the public subnet"
}
=====*/

/*====
variable "private_subnets_cidr" {
  type        = list(any)
  description = "The CIDR block for the private subnet"
}
=====*/

variable "region" {
  description = "The region to launch the bastion host"
}

variable "availability_zones" {
  type        = list(any)
  description = "The az that the resources will be launched"
}


variable "access_key" {
  description = "Access key for the AWS account"
  type        = string
}

variable "secret_key" {
  description = "Secret key for the AWS account"
  type        = string
}


variable "ports" {
  type = list(number)
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}


