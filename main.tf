terraform {
  required_providers {
    time = {
      source = "hashicorp/time"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "time" {}
provider "local" {}

resource "time_offset" "ist_time" {
  offset_hours   = 5
  offset_minutes = 30
  base_rfc3339   = timestamp()
}

resource "local_file" "example" {
  content  = "This file was created by Rishabh using Terraform at ${time_offset.ist_time.rfc3339}"
  filename = "C:/Users/risha/OneDrive/Desktop/terraform-jenkins/hello_from_terraform.txt"

}
