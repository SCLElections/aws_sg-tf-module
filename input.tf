variable "name" {
  description = "AWS Resource Name"
}

variable "vpc" {
  description = "VPC for the security group"
}

variable "tags" {
  description = "AWS resource tags following company recomended"
  type        = "map"
}

variable "description" {
  description = "AWS Resource description"
}