provider "google" {
  credentials = file("gcp-key.json")
  project     = "webx-424701"
  region      = "us-central1"
}

provider "google-beta" {
  credentials = file("gcp-key.json")
  project     = "webx-424701"
  region      = "us-central1"
}
