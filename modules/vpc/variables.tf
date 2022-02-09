variable "environment" {
  type        = string
  description = "AWS Environment"
}

variable "private_subnets" {
  type        = list
  description = "VPC private subnets list"
}

variable "public_subnets" {
  type        = list
  description = "VPC public subnets list"
}

variable "availability_zones" {
    type = list
    description = "AWS Availability zones list"
}