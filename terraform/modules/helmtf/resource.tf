
resource "helm_release" "crewmeister_application" {
  name      = "${var.helm_release_name}"
  namespace = "${var.helm_release_namespace}"
  chart = "${var.helm_chart_directory}"
  version   = "0.2.3"
  values = [file("${var.helm_chart_values}")]
  set {
    name  = "javaApplication.image.tag"
    value = "${var.image_tag}"
  }
  set {
    name  = "javaApplication.image.repository"
    value = "${var.docker_username}"
  }
  # depends_on = [
  #   kubernetes_namespace.application_namespace, kubernetes_namespace.database_namespace, kubernetes_secret.application_secret, kubernetes_secret.database_secret
  # ]
}

