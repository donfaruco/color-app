resource "aws_instance" "color-app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.ssh-key
  vpc_security_group_ids = [aws_security_group.color-app.id]

  user_data = file("scripts/userdata.sh")

  tags = {
    Name = "color-app"
    deployment = "apache"
  }
}

resource "aws_instance" "color-app-docker" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.ssh-key
  vpc_security_group_ids = [aws_security_group.color-app-docker.id]

  user_data = file("scripts/userdata4docker.sh")

  tags = {
    Name = "color-app-docker"
    deployment = "docker"
  }
}
