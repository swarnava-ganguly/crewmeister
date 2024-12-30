resource "helm_release" "crewmeister_app" {
  name      = "crewmeister"
  namespace = "default"
  chart     = "./crewmeister-helm-chart"  # Make sure the relative path is correct
  version   = "0.2.3"
}
