
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
  set {
    name  = "javaApplication.image.tag"
    value = "76487789b97848f1b92a27100282e32de02f2978"  # Or another value for the port if you want to override it
  }
}

