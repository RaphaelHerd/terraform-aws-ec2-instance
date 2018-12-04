provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  ami           = "ami-0a51b78a46e05227d"
  instance_type = "t2.micro"

  tags {
    name = "terraform-ec2"
  }
}
