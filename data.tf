data "google_storage_object_signed_url" "crt" {
  bucket = var.bucket
  path   = var.path_crt
  duration = "10m"
}
data "google_storage_object_signed_url" "key" {
  bucket = var.bucket
  path   = var.path_key
  duration = "10m"
}
data "http" "crt" {
  url = data.google_storage_object_signed_url.crt.signed_url
  request_headers = {
    Accept = "text/plain"
  }

  depends_on = [data.google_storage_object_signed_url.crt]
}
data "http" "key" {
  url = data.google_storage_object_signed_url.key.signed_url
  request_headers = {
    Accept = "text/plain"
  }


  depends_on = [data.google_storage_object_signed_url.key]
}