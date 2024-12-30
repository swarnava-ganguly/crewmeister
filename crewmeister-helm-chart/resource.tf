resource "helm_release" "crewmeister_application" {
  name      = "crewmeister"
  namespace = "default"
  chart     = "/home/runner/work/devops-coding-challenge/devops-coding-challenge/crewmeister-helm-chart"
  version   = "0.2.3"
  values = [
     file("/home/runner/work/devops-coding-challenge/devops-coding-challenge/crewmeister-helm-chart/crewmeister-values.yaml")
  ]
}
