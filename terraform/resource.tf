
# resource "helm_release" "crewmeister_app" {
#   name      = "crewmeister"
#   namespace = "default"
#   chart     = "C:/Users/user/OneDrive/Desktop/project/crewmeister/helm"
# }

resource "helm_release" "crewmeister_application" {
  name      = "crewmeister"
  namespace = "default"
  chart     = "/home/runner/work/crewmeister/crewmeister/helm"
  version   = "0.2.3"
  # values = [file("C:/Users/user/OneDrive/Desktop/project/crewmeister/helm/values.yaml")]
  values = [file("/home/runner/work/crewmeister/crewmeister/helm/values.yaml")]
#   set {
#     name  = "service.port"
#     value = "8080"  # Or another value for the port if you want to override it
#   }
}

