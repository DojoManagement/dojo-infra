module "infrastructure" {
  source = "git::https://github.com/DojoManagement/dojo-tf-modules.git//dojo-infra?ref=dojo-infra-0.0.2"

  project_name  = "dojo-management"
  project_desc  = "Dojo Management"
  region        = "sa-east-1"
  env           = "stg"
}
