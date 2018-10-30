# terraform-google-compute-instance
Terraform Module for Google Cloud Compute Instance

## Usage
```
module "gcloud-instance" {
  source       = "github.com/dwdraju/terraform-google-compute-instance"
  name         = "dev1-machine"
  machine_type = "n1-standard-1"
  image        = "ubuntu-os-cloud/ubuntu-1604-lts"
  disk_size    = 30
  disk_type    = "pd_standard"
  tags         = ["foo", "bar"]
  zone         = "us-central1-b"
  preemptible  = true
  sa_scopes    = ["userinfo-email", "compute-ro", "storage-ro"]
}
```
