resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.private_key.private_key_pem
  filename = "private_key.pem"
}
