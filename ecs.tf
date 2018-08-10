resource "aws_ecs_cluster" "terraform_ecs" {
  name = "desafio_cluster"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "terraform_ec2" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  user_data = "#!/bin/bash\necho ECS_CLUSTER=desafio_cluster > /etc/ecs/ecs.config"
  subnet_id = "${aws_subnet.subnet_terraform.id}"
  tags {
    Name = "terraform_ec2"
  }
}