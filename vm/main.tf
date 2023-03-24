provider "google" {
    version = "4.38.0"

    credentials = file("key.json")

    project = var.project
    zone    = var.zone
}
resource "google_compute_instance" "default" {
  name         = "nginx-vm"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = var.image
    }
  }


  network_interface {
    network = "default"

   
  }
}
resource "google_compute_firewall" "ssh" {
  name = "allow-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = "default"
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}

