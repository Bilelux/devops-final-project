terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "null" {}

resource "null_resource" "provision" {
  provisioner "local-exec" {
    command = "echo 'Infrastructure provisioned'"
  }
}
