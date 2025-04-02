resource "aws_s3_bucket" "s3_module_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}

# resource "aws_s3" "name" {
  
# }