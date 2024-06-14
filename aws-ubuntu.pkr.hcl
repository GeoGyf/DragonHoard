packer {
  required_plugins {
    amazon = {
      version = ">= 1.3.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "iam_instance_profile" {
  type    = string
  default = "dragon-hoard_profile"
}

variable "bucket" {
  type    = string
  default = "dragon-hoard-treasures"
}

source "amazon-ebs" "ubuntu" {
  ami_name             = "dragon-hoard-{{timestamp}}"
  instance_type        = "t2.micro"
  region               = "us-west-2"
  ami_groups           = ["all"]
  iam_instance_profile = "${var.iam_instance_profile}"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-jammy-22.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name = "dragon-hoard"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    environment_vars = [
      "DEBIAN_FRONTEND=noninteractive",
    ]
    inline = [
      "sudo apt update -y",
      "sudo apt install -y unzip",
      "curl \"https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip\" -o \"awscliv2.zip\"",
      "unzip awscliv2.zip",
      "sudo ./aws/install",
      "sudo mkdir /opt/dragon-hoard",
      "sudo chown -R ubuntu:ubuntu /opt/dragon-hoard",
      "aws s3 cp s3://${var.bucket}/treasures/ /opt/dragon-hoard --recursive"
    ]
  }
}
