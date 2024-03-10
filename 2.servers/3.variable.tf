variable "instance_ami_type" {
  description = "The Image ID to be used"
  type        = string
  default     = "ami-03bb6d83c60fc5f7c"

}

variable "instance_type" {
  description = "Instance type to be used"
  type = string
  default = "t2.medium"
  
}

variable "region" {
  description = "The regions used"
  type = string
  default = "ap-south-1"
  
}