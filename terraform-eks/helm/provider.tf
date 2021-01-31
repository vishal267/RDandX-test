terraform {
  backend "s3" {
    bucket = "tf-dmo"
    key    = "helm/statefile"
  }
}
provider "helm" {
  kubernetes {
    config_path = "/root/devops-catalog-code/terraform-eks/kubeconfig"
  }
}
