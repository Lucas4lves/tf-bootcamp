resource "aws_iam_user" "iamStandardUser" {
  name = var.iam_user_name
  path = var.iam_user_path
  tags = var.tags
}