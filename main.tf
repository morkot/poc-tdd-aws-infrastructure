terraform {
  required_version = ">= 0.10.3"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags       = "${map("Name", format("%s", var.name))}"
}
