locals {
  bucket_name = join("-", ["terraform-state-files", data.aws_region.cur_region.name, data.aws_caller_identity.cur_account.account_id])
  table_name  = join("-", ["terraform-state-locks", data.aws_region.cur_region.name, data.aws_caller_identity.cur_account.account_id])
}
