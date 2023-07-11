locals {
  root_dir = abspath("../../")
}

resource "google_storage_bucket" "bucket" {
  name     = "test-bucket"
  location = var.region
}

resource "google_storage_bucket_object" "archive" {
  name   = "code.zip"
  bucket = google_storage_bucket.bucket.name
  source = "${local.root_dir}/assets/code.zip"
}

resource "google_cloudfunctions_function" "function" {
  name        = "function-test"
  description = "My function"
  runtime     = "nodejs18"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = true
  entry_point           = "helloGET"
}

output "function_url" {
  value = google_cloudfunctions_function.function.https_trigger_url
}
 
