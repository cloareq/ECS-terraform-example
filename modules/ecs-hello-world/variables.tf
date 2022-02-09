variable "app_name" {
  type        = string
  description = "Application Name"
}

variable "app_image" {
  type        = string
  description = "Application docker image"
}

variable "environment" {
  type        = string
  description = "AWS Environment"
}

variable "iam_role" {
  type        = string
  description = "IAM ECS Role Arn"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnets_id" {
  type        = list
  description = "public subnets id list"
}

variable "private_subnets_id" {
  type        = list
  description = "private subnets id list"
}