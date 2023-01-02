output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_id" {
    value = aws_subnet.main.id
}

output "aws_security_group_id" {
    value = aws_security_group.allow_tls.id
}