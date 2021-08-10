# Kubernetes certificate resolver

Terraform k8s module for get tls from GCP or AWS bucket and put into kubernetes secret for multiple namespaces

## Wokrflow

Module help you add your TLS data to kubernetes cluster as secret for specific namespace.
#### Note: Metadata type of file must be `text/plain` in bucket

## Software Requirements
Name | Description
--- | --- |
http | >=1.2.0 |
Google | >=3.19.0 |
Kubernetes provider | >=1.11.1 |

## Usage
```
# GCP
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git//gcp?ref=v1.1.0"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# AWS
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git//aws?ref=v1.1.0"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# Without Bucket
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git?ref=v1.1.0"
  tls_name = "wildcart.general"
  crt = var.crt
  key = var.key
  namespace = ["default","jenkins","dev"]
}
```

## Inputs

### Without bucket
Name | Description | Type | Default | Example | Required
--- | --- | --- | --- |--- |--- 
namespace | Namespaces for access to this tls | `list(string)` | `["default"]` | `["monitoring","application"]` | no
tls_name | TLS name | `string` | n/a | `tls-secret` | yes
crt | Certificate content | `string` | n/a | `path/to/my/certificate.crt` | yes
key | Secret key content | n/a | `path/to/my/private.key` | yes

### AWS
Name | Description | Type | Default | Example | Required
--- | --- | --- | --- |--- |--- 
namespace | Namespaces for access to this tls | `list(string)` | `["default"]` | `["monitoring","application"]` | no
tls_name | TLS name | `string` | n/a | `tls-secret` | yes
bucket | AWS s3 bucket name | `string` | n/a | `my-site-certs-location-s3` | yes
path_crt | Path to certificate on s3 bucket | `string` | n/a | `path/to/my/certificate.crt` | yes
path_key | Path to secret key on s3 bucket | `string` | n/a | `path/to/my/private.key` | yes

### GCP
Name | Description | Type | Default | Example | Required
--- | --- | --- | --- |--- |--- 
namespace | Namespaces for access to this tls | `list(string)` | `["default"]` | `["monitoring","application"]` | no
tls_name | TLS name | `string` | n/a | `tls-secret` | yes
bucket | Google Storage Bucket | `string` | n/a | `my-site-certs-storage` | yes
path_crt | Path to certificate on Storage Bucket | `string` | n/a | `path/to/my/certificate.crt` | yes
path_key | Path to secret key on Storage Bucket | `string` | n/a | `path/to/my/private.key` | yes


## Outputs
Name | Description
--- | ---
id | Kubernetes secret id
