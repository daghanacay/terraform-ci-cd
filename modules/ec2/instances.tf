resource "aws_instance" "web" {
  count = var.ec2_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.aws_security_group_id]
  user_data = file("${path.module}/scripts/jenkins.sh")
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.web.*.id[0]
  vpc      = true
}