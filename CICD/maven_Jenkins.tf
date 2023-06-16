resource "null_resource" "install_maven" {
  provisioner "remote-exec" {
    inline = [
      "brew install maven",
    ]
  }
}
