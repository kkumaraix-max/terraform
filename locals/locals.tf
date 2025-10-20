locals {
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.environment}"
    ec2_tags = merge (
       var.common_tags,
       {
        Name = "${local.common_name}-server"
       }
      
    )
    sg_tags = merge (
       var.common_tags,
       {
        Name = "${local.common_name}-accept_all"
       }
      
    )

}