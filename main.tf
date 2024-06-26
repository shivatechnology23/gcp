resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"

  node_config {
    machine_type = "e2-medium"
  }

  initial_node_count = 3

  # Enable the ability to use Cloud Run
  enable_binary_authorization = false
  enable_intranode_visibility = false
  enable_kubernetes_alpha     = false
  enable_legacy_abac          = false
  enable_shielded_nodes       = true

  network    = "default"
  subnetwork = "default"
}
