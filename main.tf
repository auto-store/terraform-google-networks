resource "google_compute_network" "public" {
  name = public_network
}


resource "google_compute_firewall" "public" {
  name    = firewall_public
  network = google_compute_network.public.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "443"]
  }

  source_tags = ["public_server"]
}

