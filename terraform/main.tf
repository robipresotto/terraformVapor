
terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

variable "app" {}

resource "docker_image" "app_api" {
  name = "${var.app}"
}

resource "docker_container" "app_container" {
  image = docker_image.app_api.latest
  name = "${var.app}"

  ports {
    internal = 8080
    external = 8080
  }
}
