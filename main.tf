terraform {
  required_version = ">= 0.10.3"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.cidr}"
  tags       = "${map("Name", format("%s", var.name))}"
}
