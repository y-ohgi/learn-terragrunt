include "root" {
  path = find_in_parent_folders()
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "${get_env("TF_STATE_BUCKET")}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-northeast-1"
    encrypt        = true
  }
}

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

