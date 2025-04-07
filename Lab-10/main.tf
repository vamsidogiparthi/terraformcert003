resource "random_password" "password" {
  keepers = {
    datetime = timestamp()
  }
  length  = 16
  special = true
}

resource "random_uuid" "guid" {
}

output "guid" {
  value = random_uuid.guid.result
}

output "password" {
  value     = random_password.password.result
  sensitive = true
}
