variable "project" {
  description = "GCP project name"
  default     = "tomh-lab-1000"

variable "zone" {
  description = "GCP zone"
  default     = "europe-west2-c"
}

variable "region" {
  description = "GCP region"
  default     = "europe-west2"
}

variable "public-network" {
 description = "network for public webserver"
 default = ""
}

variable "private-network" {
 description = "network for private webserver"
 default = ""
}

