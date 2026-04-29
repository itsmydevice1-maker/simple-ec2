resource "aws_instance" "tf-instance" {
  count = var.instance_count
  ami           = data.aws_ami.ubuntu_os.id
  instance_type = var.instance
  subnet_id     = aws_subnet.pub.id
  root_block_device {
    volume_size           = var.root_storage
    volume_type           = "gp3" # General Purpose SSD
    tags = {
      Name = "RootVolume"
    }
  }

  tags = {
    Name = "test-instance"
  }
}

resource "aws_vpc" "new-vpc" {
  cidr_block = var.vpc
  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "pub" {
  vpc_id            = aws_vpc.new-vpc.id
  cidr_block        = var.subnet
  availability_zone = "ap-south-1a"

  tags = { name = "pub-vpc"
  }

}