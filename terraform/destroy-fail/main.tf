terraform {
  required_version = ">= 1.0.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

resource "null_resource" "destroy_failure_test" {
  provisioner "local-exec" {
    when    = destroy
    command = "echo Destroy is intentionally failing && exit 1"
  }
}
