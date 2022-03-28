module "ps_service_account" {
  source                                    = "./modules/service_account"
  sa_account_id                             = var.sa_account_id
  sa_display_name                           = var.sa_display_name
}
module "vpc" {
  source = "./modules/vpc"
  project_id                                = var.project_id
  gke_network_name                          = var.gke_network_name
  vpc_auto_create_subnetworks               = var.vpc_auto_create_subnetworks
  vpc_mtu                                   = var.vpc_mtu
  gke_subnetwork_name                       = var.gke_subnetwork_name
  gke_subnet_ip                             = var.gke_subnet_ip
  gke_subnet_private_access                 = var.gke_subnet_private_access
  gke_pod_range                             = var.gke_pod_range
  gke_service_range                         = var.gke_service_range
  gke_ip_cidr_range_pod                     = var.gke_ip_cidr_range_pod
  gke_ip_cidr_range_service                 = var.gke_ip_cidr_range_service
  gke_privade_block_name                    = var.gke_privade_block_name
  gke_privade_block_purpose                 = var.gke_privade_block_purpose
  gke_privade_block_address_type            = var.gke_privade_block_address_type
  gke_privade_block_ip_version              = var.gke_privade_block_ip_version
  gke_privade_block_prefix_length           = var.gke_privade_block_prefix_length
  gke_networking_connection_service         = var.gke_networking_connection_service
  gke_firewall_rule                         = var.gke_firewall_rule
  gke_firewall_direction                    = var.gke_firewall_direction
  gke_firewall_protocol                     = var.gke_firewall_protocol
  gke_firewall_port                         = var.gke_firewall_port
  gke_region                                = var.gke_region
  depends_on = [
    module.ps_service_account
  ]
}


module "gke" {
  source                                    = "./modules/gke"
  project_id                                = var.project_id
  gke_custler_name                          = var.gke_custler_name
  gke_region                                = var.gke_region
  gke_regional                              = var.gke_regional
  gke_zones                                 = var.gke_zones
  gke_location                              = var.gke_location
  gke_network_name                          = var.gke_network_name
  gke_subnetwork_name                       = var.gke_subnetwork_name
  gke_horizontal_autoscaling                = var.gke_horizontal_autoscaling
  gke_load_balancer                         = var.gke_load_balancer
  gke_node_pool_name                        = var.gke_node_pool_name
  gke_disk_type                             = var.gke_disk_type
  gke_machine_type                          = var.gke_machine_type
  gke_nat_name                              = var.gke_nat_name
  gke_router_name                           = var.gke_router_name
  gke_service_range                         = var.gke_service_range
  gke_pod_range                             = var.gke_pod_range
  gke_service_account                       = module.ps_service_account.google_service_account_email
  depends_on = [
    module.ps_service_account,
    module.vpc
  ]
}