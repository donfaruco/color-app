resource "aws_instance" "color-app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.ssh-key
  vpc_security_group_ids = [aws_security_group.color-app.id]

  user_data = file("scripts/userdata.sh")

  tags = {
    Name = var.instance_name
    deployment = apache
  }
}

resource "aws_instance" "color-app" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.ssh-key
  vpc_security_group_ids = [aws_security_group.color-app.id]

  user_data = file("scripts/userdata4docker.sh")

  tags = {
    Name = var.instance_name
    deployment = docker
  }
}
