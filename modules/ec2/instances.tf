resource "aws_instance" "web" {
  count = var.ec2_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.aws_security_group_id]
  user_data = file("${path.module}/scripts/jenkins.sh")

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.web.*.id[0]
  vpc      = true
}