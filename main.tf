module "s3FromModule" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
  tags = var.tags
}

module "UserFors3" {
  source = "./modules/iam/user"
  iam_user_name = var.iam_user_name
  iam_user_path = var.iam_user_path
  tags = var.tags
}