module "vpc" {
  source = "../.."
  name   = "test"
  cidr   = "10.1.0.0/16"
}
