project_id                  = "radiant-oven-345219"
gke_custler_name            = "epam-cluster"
gke_region                  = "us-central1"
gke_regional                = false
gke_zones                   = ["us-central1-b"]
gke_location                = "us-central1-b"
gke_network_name            = "demo-network"
gke_subnetwork_name         = "demo-subnet"
gke_horizontal_autoscaling  = false
gke_load_balancer           = false
gke_node_pool_name          = "gke-epam-node"
gke_disk_type               = "pd-standard"
gke_machine_type            = "n1-standard-1"
gke_nat_name                = "gke-nat"
gke_router_name             = "gke-router"
gke_service_range           = "service-ip-range"
gke_pod_range               = "pod-ip-range"