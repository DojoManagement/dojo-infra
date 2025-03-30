module "infrastructure_stg" {
  source = "git::git@github.com:DojoManagement/dojo-ft-modules.git//dojo-infra?ref=dojo-infra-0.0.1"

  project_name  = "dojo-management"
  project_desc  = "Dojo Management"
  region        = "sa-east-1"
  env           = "stg"
}
