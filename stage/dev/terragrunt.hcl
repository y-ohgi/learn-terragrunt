inputs = {
  name = "dev"
}

# terraform {
#   source = "${get_repo_root()}/modules/vpc"
# #   backend "gcs" {
# #     bucket = "terragrunt-state-auto-generate"
# #     prefix = "./terraform.tfstate"
# #   }
# }

# include {
#   path = "${get_repo_root()}/root.hcl"
# }

# inputs = {
#   name = "dev"
#   tags = {
#     Environment = "dev"
#   }
# }

