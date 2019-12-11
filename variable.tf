variable "project" {
  description = "GCP project name"
  default     = "tomh-lab-1000"
}

variable "zone" {
  description = "GCP zone"
  default     = "europe-west2-c"
}

variable "region" {
  description = "GCP region"
  default     = "europe-west2"
}

variable "publicnetwork" {
 description = "network for public webserver"
 default = "staging_public"
}

variable "privatenetwork" {
 description = "network for private webserver"
 default = "staging_private"
}

