provider "aws" {
  region = "eu-west-1"
}

locals {
  domain = "cypik.com"
}

module "acm" {
  source                    = "./../../"
  name                      = "certificate"
  environment               = "test"
  domain_name               = "cypik.com"
  subject_alternative_names = ["*.${local.domain}", "www.${local.domain}"]
}
