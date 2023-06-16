resource "null_resource" "install_maven" {
  provisioner "local-exec" {
    command = <<EOF
      wget https://downloads.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz
      tar xzf apache-maven-3.8.8-bin.tar.gz
      mv apache-maven-3.8.8 /opt/maven
      echo 'export PATH=/opt/maven/bin:$PATH' >> ~/.bash_profile
    EOF
  }
}