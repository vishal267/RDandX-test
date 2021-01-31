terraform {
  backend "s3" {
    profile = "devops"
    bucket = "tf-dmo"
    key    = "eks/statefile"
  }
}
