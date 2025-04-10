terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  content  = "This file was created by Terraform!"
  filename = "${path.module}/hello_from_terraform.txt"
}
