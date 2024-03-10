resource "aws_instance" "dev-web-server" {
  ami                  = var.instance_ami_type
  instance_type        = var.instance_type
  key_name             = "testing-dev-1"
  subnet_id            = data.aws_subnet.dev_subnet_public_1.id
  iam_instance_profile = data.aws_iam_instance_profile.s3-access-profile.name

  # count         = 1
  vpc_security_group_ids = [
    aws_security_group.server-ssh.id,
    aws_security_group.server-traffic.id
  ]
  user_data = file("user-script-managed.sh")

  tags = {
    "Name" = "dev_web_server_2"
    "name" = "dev_web_server_2"
  }


}
