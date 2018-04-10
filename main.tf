resource "aws_security_group" "main" {
  name        = "${var.name}"
  description = "${var.description}"
  vpc_id      = "${var.vpc}"

  lifecycle {
    create_before_destroy = true
  }

  tags {
    Name                   = "sec-${var.tags["Name"]}-${var.tags["environment"]}"
    project                = "${var.tags["project"]}"
    application            = "${var.tags["application"]}"
    environment            = "${var.tags["environment"]}"
    cost-center            = "${var.tags["cost-center"]}"
    creator                = "${var.tags["creator"]}"
    responsible-department = "${var.tags["responsible-department"]}"
    type                   = "${var.tags["type"]}"
    responsible-party      = "${var.tags["responsible-party"]}"
  }
}