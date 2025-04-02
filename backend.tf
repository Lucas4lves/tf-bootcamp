terraform {
  backend "s3" {
       bucket = "scratch-bucket-0a3e"
       key = "s3"
       region = "us-east-1"
  }
}