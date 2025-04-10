variable "filename" {
  default = "default_log.txt"
}

resource "local_file" "example" {
  content  = "Created by Jenkins Build ID"
  filename = "${path.module}/${var.filename}"
}
