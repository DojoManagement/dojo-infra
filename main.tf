variable "github_token" {
  type    = string
  default = ""
}

module "infrastructure" {
  source = "git::https://x-access-token:${{ secrets.GH_PAT }}@github.com/DojoManagement/dojo-ft-modules.git//dojo-infra?ref=dojo-infra-0.0.1"

  project_name  = "dojo-management"
  project_desc  = "Dojo Management"
  region        = "sa-east-1"
  env           = "stg"
}
