variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string

}

variable "project_name" {
  description = "The name of the project"
  type        = string

}
variable "envionment" {
  description = "The environment (e.g., dev, prod)"
  type        = string

}