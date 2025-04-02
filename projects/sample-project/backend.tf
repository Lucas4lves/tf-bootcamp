terraform {
  backend "s3" {
       bucket = "devops-tf-states-bucket"
       key = "s3"
       region = "us-east-1"
  }
}