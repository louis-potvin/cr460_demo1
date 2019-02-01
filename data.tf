# Data based on variables
data "google_compute_network" "default-network" {
  name = "${var.network_id}"
  project = "${data.google_project.default-project.project_id}"
}

data "google_project" "default-project" {
  project_id = "${var.project_id}"
 }
