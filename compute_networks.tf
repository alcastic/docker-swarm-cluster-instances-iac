resource "google_compute_network" "docker_swarm" {
  name = var.swarm_cluster_network
}

resource "google_compute_firewall" "docker_swarm" {
  name = var.swarm_cluster_firewall
  network = google_compute_network.docker_swarm.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "22",
      "2377",
      "7946"]
  }

  allow {
    protocol = "udp"
    ports = [
      "7946",
      "4789"]
  }

  source_ranges = [
    "0.0.0.0/0"]
}

