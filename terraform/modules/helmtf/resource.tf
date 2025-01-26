
# resource "helm_release" "crewmeister_app" {
#   name      = "crewmeister"
#   namespace = "default"
#   chart     = "C:/Users/user/OneDrive/Desktop/project/crewmeister/helm"
# }

resource "helm_release" "crewmeister_application" {
  name      = "${var.helm_release_name}"
  namespace = "${var.helm_release_namespace}"
  # chart     = "/home/runner/work/crewmeister/crewmeister/helm"
  chart = "${var.helm_chart_directory}"
  version   = "0.2.3"
  values = [file("${var.helm_chart_values}")]
  # values = [file("/home/runner/work/crewmeister/crewmeister/helm/values.yaml")]
  set {
    name  = "javaApplication.image.tag"
    value = "${var.image_tag}"
  }
}

