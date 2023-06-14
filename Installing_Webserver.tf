resource "null_resource" "install_web_server" {
  provisioner "local-exec" {
    command = "apt-get update && apt-get install -y apache2"
  }
}