variable "vpc_id" {
  description = "The VPC Subnet IDs to launch in"
  type        = string
}

variable "subnet_id" {
  description = "The VPC Subnet IDs to launch in"
  type        = string
}
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t4g.medium"
}

variable "project_name_prefix" {
  description = "A string value to describe prefix of all the resources"
  type        = string
  default     = "dev"
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile"
  type        = string
  default     = ""
}

variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  type        = bool
  default     = true
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = true
}

variable "common_tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    "Created By" = "terraform"
  }
}

variable "delete_on_termination" {
  description = "Whether EBS volume will be deleted when instance gets deleted."
  type        = bool
  default     = true
}

variable "encrypted" {
  description = "Whether EBS volume will be encrypted."
  type        = bool
  default     = true
}

variable "volume_type" {
  description = "Volume type for EC2 instance default latest type"
  type        = string
  default     = "gp3"
}

variable "root_volume_size" {
  description = "Root volume size of the EC2 instance"
  type        = number
  default     = 50
}

variable "disable_api_stop" {
  description = "If true, enables EC2 Instance Stop Protection."
  type        = bool
  default     = false
}

variable "source_dest_check" {
  description = "Source destination Check. Used for NAT or VPNs."
  type        = bool
  default     = true
}
variable "tag_name" {
  description = "Name tag value for the instance"
  type        = string
  default     = "terraform-tf-agent"
}

variable "tag_environment" {
  description = "Environment tag value for the instance"
  type        = string
  default     = "uat"
}
variable "tag_project" {
  description = "Name tag value for the instance"
  type        = string
  default     = "vr-core"
}
variable "tag_owner" {
  description = "Name tag value for the instance"
  type        = string
  default     = "tothenew.com"
}
