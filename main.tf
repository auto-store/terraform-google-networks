resource "google_compute_network" "public" {
  name = var.public-network
}

resource "google_compute_network" "private" {
  name = var.private-network
}

resource "google_compute_firewall" "public" {
  name    = var.firewall
  network = google_compute_network.public.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "443"]
  }

  source_tags = ["public-server"]
}


resource "google_compute_firewall" "private" {
  name    = var.firewall
  network = google_compute_network.private.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "ssh"
    ports    = ["22"]
  }

  source_tags = ["private-server"]
}
