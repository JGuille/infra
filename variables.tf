## VPC VARIABLES
variable "project_id" {
  type        = string
  description = "GCP Project ID"
}
variable "gke_network_name" {
  type        = string
  description = "GKE VPC Name"
}
variable "vpc_auto_create_subnetworks" {
  type        = bool
  description = "VPC Autocreate subnetwork flag"
}
variable "vpc_mtu" {
  type        = number
  description = "VPC MTU Value"
}
variable "gke_subnetwork_name" {
  type        = string
  description = "GKE Subnetwork Name"
}
variable "gke_subnet_ip" {
  type        = string
  description = "GKE Subnetwork IP"
}
variable "gke_subnet_private_access" {
  type        = string
  description = "GKE Subnet private access"
}
variable "gke_pod_range" {
  type        = string
  description = "GKE Pod Range Name"
}
variable "gke_service_range" {
  type        = string
  description = "GKE Service Range Name"
}
variable "gke_ip_cidr_range_pod" {
  type        = string
  description = "GKE ip_cidr Pod Range"
}
variable "gke_ip_cidr_range_service" {
  type        = string
  description = "GKE ip_cidr Service Range"
}
variable "gke_privade_block_name" {
  type        = string
  description = "GKE Privade Block Name"
}
variable "gke_privade_block_purpose" {
  type        = string
  description = "GKE Privade Block Purpose"
}
variable "gke_privade_block_address_type" {
  type        = string
  description = "GKE Privade Block Address Type"
}
variable "gke_privade_block_ip_version" {
  type        = string
  description = "GKE Privade Block IP Version"
}
variable "gke_privade_block_prefix_length" {
  type        = number
  description = "GKE Privade Block Prefix Length"
}
variable "gke_networking_connection_service" {
  type        = string
  description = "GKE Networking Connection Service"
}
variable "gke_firewall_rule" {
  type        = string
  description = "GCE Firewall Rule"
}
variable "gke_firewall_direction" {
  type        = string
  description = "GCE Firewall Direction"
}
variable "gke_firewall_protocol" {
  type        = string
  description = "GCE Firewall Protocol"
}
variable "gke_firewall_port" {
  type        = string
  description = "GCE Firewall Port"
}
variable "gke_region" {
  type        = string
  description = "GCE Region"
}
 
## GKE VARIABLES
variable "gke_custler_name" {
  type        = string
  description = "GKE Cluster Name"
}
variable "gke_location" {
  type        = string
  description = "GKE Location"
}
variable "gke_zones" {
  type        = list(string)
  description = "GKE List of Zones"
}
variable "gke_load_balancer" {
  type        = bool
  description = "GKE Load Balancer Flag"
}
variable "gke_service_account" {
  type        = string
  description = "GKE Service Account Name"
  default     = ""
}
variable "gke_router_name" {
  type        = string
  description = "GKE router name"
}
variable "gke_nat_name" {
  type        = string
  description = "GKE Nat name"
}
variable "gke_machine_type" {
  type        = string
  description = "GKE Machine Type"
}
variable "gke_disk_type" {
  type        = string
  description = "GKE Disk Type"
}
variable "gke_regional" {
  type        = bool
  description = "GKE Regional Flag"
}
variable "gke_horizontal_autoscaling" {
  type        = bool
  description = "GKE Horizontal Autoscaling Flag"
}
variable "gke_node_pool_name" {
  type        = string
  description = "GKE Node Pool Name"
}

## SA VARIABLES

variable "sa_account_id" {
  type        = string
  description = "Service Account accountID"
}
variable "sa_display_name" {
  type        = string
  description = "Service Account Display Name"
  default     = ""
}