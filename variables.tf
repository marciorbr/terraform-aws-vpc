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

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "A list of additional CIDR blocks to associate with the VPC"
  default     = []
}

variable "public_subnets" {
  description = "A list of maps defining the public subnets"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))

}