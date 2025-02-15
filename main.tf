terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "winter-sensor-451009-d6"
  region = "us-west1"
}

resource "google_storage_bucket" "mybucket" {
    name = "my-terraform-bucket-04061988"
    location = "us-west1"
}

output "bucket_name" {
  value = google_storage_bucket.mybucket.name
}
