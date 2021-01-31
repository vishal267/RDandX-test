

#Metrics server 
resource "helm_release" "metric-server" {
  name       = "metric-server"
  namespace  = "kube-system"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metric-server"

}

resource "helm_release" "autoscaler" {
  name       = "cluster-autoscaler"
  namespace  = "kube-system"
  repository = "https://kubernetes.github.io/autoscaler"
  chart      = "cluster-autoscaler"

values = [
     "${file("charts/cluster-autoscaler/values.yaml")}"
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


##JEnkins 

resource "helm_release" "jenkins" {
  name       = "jenkins#"
  namespace  = "kube-system"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"

values = [
     "${file("charts/jenkins/values.yaml")}"
   ]
}
