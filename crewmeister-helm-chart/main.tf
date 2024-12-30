provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "kubernetes_namespace" "crewmeister" {
  metadata {
    name = "default"
  }
}

resource "helm_release" "crewmeister_app" {
  name      = "crewmeister"
  namespace = "default"
  chart     = "./crewmeister-helm-chart"
}





