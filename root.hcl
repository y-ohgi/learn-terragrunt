locals {
  S3Bucket = get_env("S3_BUCKET", "my-terraform-state")

}

# remote_state {
#   backend = "s3"
#   config = {
#     bucket = local.S3Bucket
#     key    = "${path_relative_to_include()}/terraform.tfstate"
#     region = "ap-northeast-1"
#   }
# }

# generate "provider" {
#   path      = "provider.tf"
#   if_exists = "overwrite"
#   contents  = file("provider.tf")
# }

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "ap-northeast-1"
}
EOF
}


inputs = {
  Terragrunt = "true"
}
