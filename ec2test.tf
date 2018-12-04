provider "aws" {
  region                  = "eu-central-1"
  shared_credentials_file = "../.aws/credentials"

  #  profile = "terraform"
}

resource "aws_instance" "example" {
  ami           = "ami-0bdf93799014acdc4"
  instance_type = "t2.micro"

  tags {
    name = "terraform-ec2"
  }
}
