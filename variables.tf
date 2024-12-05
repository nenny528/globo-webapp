
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}

variable "tfe_organization" {
  type        = string
  description = "(Required) tfe organization"
}

variable "tfe_workspace_name" {
  type        = string
  description = "(Required) networking workspace name"
}

variable "api_key_secret_id" {
  type        = string
  description = "(Required) secret id for the api key id"
}

variable "ec2_role_name" {
  type        = string
  description = "(Required) EC2 role name for ec2 instance profile"
}

variable "playbook_repository" {
  type        = string
  description = "(Required) uri of playbook"
}