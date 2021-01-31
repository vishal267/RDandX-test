resource "kubernetes_namespace" "monitoring" {
  metadata {
    annotations = {
      name = "monitoring"
    }

    labels = {
      app = "monitoring"
    }

    name = "monitoring"
  }
}

