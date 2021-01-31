
resource "helm_release" "autoscaler" {
  name       = "cluster-autoscaler"
  namespace  = "kube-system"
  repository = "https://kubernetes.github.io/autoscaler"
  chart      = "cluster-autoscaler"

values = [
     "${file("charts/metrics-server/cluster-autoscaler/values.yaml")}"
   ]
}

resource "helm_release" "nginx-ingress" {
  name       = "nginx-ingress"
  namespace  = "kube-system"
  repository = "https://helm.nginx.com/stable"
  chart      = "nginx-ingress"

values = [
     "${file("charts/nginx-ingress/values.yaml")}"
   ]

}
