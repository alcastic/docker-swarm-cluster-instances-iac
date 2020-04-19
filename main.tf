provider "google" {
  version = "2.5.0"
  credentials = file("docker-swarm-0001_service-account-credentials.json")
  project = "docker-swarm-0001"
  region = "southamerica-east1"
}