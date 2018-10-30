variable "name" {
  description = "Name to use for the instance"
  default     = ""
}

variable "machine_type" {
  description = "Instance type of instance, eg. n1-standard-1"
  default     = "n1-standard-1"
}

variable "zone" {
  description = "Availibility zone of the instance"
  default     = "us-central1-b"
}

variable "image" {
  description = "Image to use for the instance, could be custom or public"
  default     = "ubuntu-os-cloud/ubuntu-1604-lts"
}

variable "tags" {
  description = "List of tags to use for the instance"
  default     = []
}

variable "preemptible" {
  description = "Flag for preemptibility of instance. If true, the instance shuts down within 24 hours"
  default     = "false"
}

variable "metadata_startup_script" {
  description = "Startup script"
  default     = ""
}

variable "sa_scopes" {
  description = "Service account scope for the instance"
  default     = ["userinfo-email", "compute-ro", "storage-ro"]
}

variable "disk_size" {
  description = "Size of boot disk"
  default     = 30
}

variable "disk_type" {
  description = "Type of boot disk: pd-ssd, pd-standard"
  default     = "pd-standard"
}
