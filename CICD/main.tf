provider "null" {}

resource "null_resource" "install_web_server" {
  provisioner "local-exec" {
    command = <<-EOT
      brew install httpd
      sudo apachectl start
    EOT
  }
}
