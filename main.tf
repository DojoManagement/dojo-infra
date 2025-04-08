terraform {
  backend "s3" {
    bucket   = "dojo-management-tfstate"
    key      = "dojo-infra/dojo-management-tfstate"
    region   = "sa-east-1"
    encrypt  = true
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}


module "infrastructure" {
  source = "git::https://github.com/DojoManagement/dojo-tf-modules.git//dojo-infra?ref=dojo-infra-0.0.2"

  project_name  = "dojo-management"
  project_desc  = "Dojo Management"
  region        = "sa-east-1"
  env           = "stg"
}
