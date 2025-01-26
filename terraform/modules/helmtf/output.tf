output "helm_release_name" {
  value = helm_release.crewmeister_application.name
  chart = helm_release.crewmeister_application.chart
  values = helm_release.crewmeister_application.values
  namespace = helm_release.crewmeister_application.namespace
}