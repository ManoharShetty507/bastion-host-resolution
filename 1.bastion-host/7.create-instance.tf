resource "aws_instance" "dev-web-server" {
  ami                  = var.instance_ami_type
  instance_type        = var.instance_type
  key_name             = "testing-dev-1"
  subnet_id            = aws_subnet.dev_subnet_public_1.id
  iam_instance_profile = data.aws_iam_instance_profile.s3-access-profile.name
  # count         = 1
  vpc_security_group_ids = [
    aws_security_group.ssh.id,
    aws_security_group.web-traffic.id
  ]
  user_data = file("user-script-controller.sh")

  tags = {
    "Name" = "dev_web_server_1"
    "name" = "dev_web_server_1"
  }
}
