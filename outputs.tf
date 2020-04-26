
output "swarm-master-nodes-public-ips" {
  value = google_compute_instance.swarm-master-nodes.*.network_interface.0.access_config.0.nat_ip
}

output "swarm-master-nodes-internal-ips" {
  value = google_compute_instance.swarm-master-nodes.*.network_interface.0.network_ip
}

output "swarm-worker-nodes-internal-ips" {
  value = google_compute_instance.swarm-worker-nodes.*.network_interface.0.network_ip
}