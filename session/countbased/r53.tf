resource "aws_route53_record" "roboshop" {
    count = 2
    zone_id = "Z096778411CYC46C0VA5Q"
    name = "${var.instances[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.terraform[count.index].private_ip]
    allow_overwrite = true
}

