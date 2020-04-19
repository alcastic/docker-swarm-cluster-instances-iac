variable "swarm_cluster_network" {
  default = "docker-swarm-network"
}

variable "swarm_cluster_firewall" {
  default = "docker-swarm-firewall"
}

// CoreOS Container Linux will no longer receive updates after May 26, 2020.
variable "os-cluster-instances" {
  default = "coreos-cloud/coreos-stable"
}

variable "swarm_master_nodes" {
  default = "1"
}

variable "swarm_worker_nodes" {
  default = "3"
}
