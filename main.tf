provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  ami           = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.medium"

  tags {
    name = "terraform-ec2"
  }
}
