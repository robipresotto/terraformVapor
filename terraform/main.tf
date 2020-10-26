
terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
  backend "local" {
    path = "terraform/terraform.tfstate"
  }
}
