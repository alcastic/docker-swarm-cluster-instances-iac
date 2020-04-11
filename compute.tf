resource "google_compute_instance" "swarm-master-node" {
  count = var.swarm_master_nodes
  name = "swarm-master-node-${format("%02s", count.index)}"
  machine_type = "n1-standard-1"
  zone = "southamerica-east1-b"

  tags = [
    "swarm",
    "master"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = var.swarm_cluster_network
    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "swarm-worker-node" {
  count = var.swarm_worker_nodes
  name = "swarm-worker-node-${format("%02s", count.index)}"
  machine_type = "g1-small"
  zone = "southamerica-east1-b"

  tags = [
    "swarm",
    "worker"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = var.swarm_cluster_network
    access_config {
      // Ephemeral IP
    }
  }
}
