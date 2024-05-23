resource "aws_security_group" "security_group" {
  name        = local.sg_name_unique
  description = var.sg_desc
  vpc_id      = var.vpc_id

#egress rules are defined in dynamic block
  dynamic "egress" {
    for_each = var.outbound_rules
    content {
        from_port        = egress.value["from_port"]
        to_port          = egress.value["to_port"]
        protocol         = egress.value["protocol"]
        cidr_blocks      = egress.value["cidr_blocks"]
    }
  }
#ingress rules are defined in dynamic block
  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value["to_port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["cidr_blocks"]
    }
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
    Name = local.sg_name_unique
    }
    )
}
