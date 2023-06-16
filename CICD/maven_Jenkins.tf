provider "local" {}

resource "null_resource" "install_maven" {
  provisioner "local-exec" {
    command = "brew install maven"
  }
}

resource "null_resource" "install_jenkins" {
  provisioner "local-exec" {
    command = "brew install jenkins"
  }
}
