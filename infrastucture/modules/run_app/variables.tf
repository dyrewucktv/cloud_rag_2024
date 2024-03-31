variable "application_name" {
  description = "Name of application"
  type        = string
}


variable "location" {
  description = "Location of instance"
  type        = string
}

variable "docker_img" {
  description = "Url to docker image"
  type        = string
}

variable "port" {
  description = "Port"
  type        = number
}

variable "environment" {
  description = "Map of environment variables"
  type        = map(string)
}

output "url" {
  description = "IP of application"
  value       = google_cloud_run_service.app.traffic[0].url
}
