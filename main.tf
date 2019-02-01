provider "google" {
  credentials = "${file("cr460-h2019-0061805-f2fe3656cae5.json")}"
  project     = "${var.project_id}"
  region      = "us-east1"
}

resource "google_compute_instance" "instance1" {
  name         = "instance1"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Nothing
    }
  }

}

resource "google_compute_instance" "instance2" {
  name         = "instance2"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Nothing
    }
  }

}

resource "google_compute_instance" "instance3" {
  name         = "instance3"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Nothing
    }
  }

}

