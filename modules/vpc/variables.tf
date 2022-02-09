variable "environment" {
  type        = string
  description = "AWS Environment"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block"
}

variable "private_subnets" {
  type        = list(any)
  description = "VPC private subnets list"
}

variable "public_subnets" {
  type        = list(any)
  description = "VPC public subnets list"
}

variable "availability_zones" {
  type        = list(any)
  description = "AWS Availability zones list"
}