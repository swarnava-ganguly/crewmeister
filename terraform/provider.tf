provider "kubernetes" {
  config_path = "C:/Users/user/.kube/config"
  config_context = "docker-desktop"
}

provider "helm" {
  kubernetes {
    config_path = "C:/Users/user/.kube/config"
    config_context = "docker-desktop"
  }
}

# output "helm_release_name" {
#   value = helm_release.crewmeister_app.name
# }