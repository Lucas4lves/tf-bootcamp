terraform {
  backend "s3" {
       bucket = "scratch-bucket-0a3e"
       key = "devops-tf-states-bucket"
       region = "us-east-1"
  }
}