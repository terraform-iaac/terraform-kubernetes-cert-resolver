variable "namespace" {
  description = "(Optional) Namespaces for access to this tls"
  default = [
    "default",
  ]
}
variable "tls_name" {
  description = "(Required) Name for tls"
}
variable "bucket" {
  description = "(Required) Google Storage Bucket"
}
variable "path_crt" {
  description = "(Required) Path to crt file on Storage Bucket"
}
variable "path_key" {
  description = "(Required) Path to crt file on Storage Bucket"
}