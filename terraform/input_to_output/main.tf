variable "my_input" {
  type = string
  default = "hello world"
}

output "my_output" {
  value = var.my_input
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}