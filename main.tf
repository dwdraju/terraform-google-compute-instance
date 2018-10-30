resource "google_compute_instance" "this" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

  tags = ["${var.tags}"]

  boot_disk {
    initialize_params {
      image = "${var.image}"
      size  = "${var.disk_size}"
      type  = "${var.disk_type}"
    }
  }

  scratch_disk {}

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "${var.metadata_startup_script}"

  service_account {
    scopes = ["${var.sa_scopes}"]
  }

  scheduling {
    preemptible       = "${var.preemptible}"
    automatic_restart = "${var.preemptible != "true" ? false : true}"
  }
}
