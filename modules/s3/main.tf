resource "aws_s3_bucket" "simple_bucket_module" {
  bucket = var.bucket_name
  tags = var.tags
}

# resource "aws_s3" "name" {
  
# }