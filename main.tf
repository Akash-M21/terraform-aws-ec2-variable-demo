resource "aws_instance" "demo" {

  count = var.instance_count

  ami           = var.instance_config.ami
  instance_type = var.instance_config.instance_type

  monitoring = var.enable_monitoring

  subnet_id = var.subnet_ids[count.index]

  vpc_security_group_ids = tolist(var.security_groups)

  tags = merge(
    var.common_tags,
    {
      Name = "Server-${count.index + 1}"
    }
  )
}
