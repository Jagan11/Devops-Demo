provider "null" {}
resource "null_resource" "install_maven" {
  provisioner "remote-exec" {
    inline = [
      "wget https://downloads.apache.org/maven/maven-3/3.8.2/binaries/apache-maven-3.8.2-bin.tar.gz",
      "tar xzf apache-maven-3.8.2-bin.tar.gz",
      "mv apache-maven-3.8.2 /opt/maven",
      "echo 'export PATH=/opt/maven/bin:$PATH' >> ~/.bashrc",
    ]
  }
}
