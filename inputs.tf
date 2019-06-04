variable "amazon_side_asn" {
  description = "ASN of AWS Side of a BGP Session"
  default     = "64512"
}

variable "auto_accept_shared_attachments" {
  description = "Whether resource requests are automatically accepted"
  default     = "disable"
}

variable "default_route_table_association" {
  description = "Whether resource attachments are automatically associated with the default association route table"
  default     = "disable"
}

variable "default_route_table_propagation" {
  description = "Whether resource attachments automatically propagate routes to the default propagation route table"
  default     = "disable"
}

variable "gateway_description" {
  description = "Description of the Gateway"
  default     = "Default Gateway Description"
}

variable "create_transit_gateway" {
  description = "Create a transit gateway or not"
  default = true
}

variable "share_transit_gateway" {
  description = "Share the Gateway using AWS RAM resource"
  default = false
}

variable "transit_gateway_id" {
  description = "Provide a TGW To use"
  default = ""
}

variable "transit_gateway_arn" {
  description = "Provide a TGW ARN works in conjunction with share_transit_gateway"
  default = ""
}

variable "dns_support" {
  description = "Whether DNS support is enabled"
  default     = "enable"
}

variable "gateway_tags" {
  description = "Key Value Tags for the EC2 Transit Gateway"
  default     = {}

  type = "map"
}

variable "vpn_ecmp_support" {
  description = "Whether VPN Equal Cost Multipath protocol is enabled"
  default     = "disable"
}

variable "attach_to_vpc" {
  description = "Attach the transit gateway to a VPC"
  default = false
}

variable "vpc_id" {
  description = "VPC ID to attach gateway to"
  default = ""
}

variable "subnet_ids" {
  description = "List of Subnet IDS for Gateway Attachment when attachment is for VPC"
  default = []

  type = "list"
}

variable "default_tags" {
  description = "Default Tags which are merged into resource tags"
  default = {}

  type = "map"
}

variable "route_table_tags" {
  description = "Key Value tags for EC2 Transit Gateway Route table"
  default = {}

  type = "map"
}

variable "transit_gateway_route" {
  description = "List of CIDR blocks to add to a transit gateway route table"
  default = []

  type = "list"
}

variable "transit_gateway_route_table_association" {
  description = "TGW default Route association"
  default = true
}

variable "transit_gateway_route_table_propagation" {
  description = "TGW Default Route properation"
  default = true
}