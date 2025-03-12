include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../modules/product"
}

inputs = {
  name = "dev1"
}


# include {
#   path = find_in_parent_folders("root.hcl")
# }

# terraform {
#   source = "${get_repo_root()}/stage/shared"
# }

# inputs = {
#   name = "dev1"
# }
