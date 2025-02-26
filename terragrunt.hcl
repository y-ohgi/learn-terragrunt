remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terraform-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-northeast-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      Terragrunt = "true"
    }
  }
}
EOF
}

# # 共通の変数定義
# locals {
#   environment = split("/", path_relative_to_include())[0]
# }

# 共通のinputs
inputs = {
  # environment = local.environment
  Terragrunt = "true"
}
