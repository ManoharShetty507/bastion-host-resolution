data "aws_vpc" "dev_vpc" {
  filter {
    name   = "tag:Name"
    values = ["dev_vpc"]
  }
}

data "aws_subnet" "dev_subnet_public_1" {
  vpc_id = data.aws_vpc.dev_vpc.id

  filter {
    name   = "tag:Name"
    values = ["dev_subnet_public_1"] # Replace with the name of your existing subnet
  }
}
