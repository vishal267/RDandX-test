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


resource "kubernetes_namespace" "argocd" {
  metadata {
    annotations = {
      name = "argocd"
    }

    labels = {
      app = "argocd"
    }

    name = "argocd"
  }

}
