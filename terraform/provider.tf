provider "kubernetes" {
  # config_path = "C:/Users/user/.kube/config"
  config_path = "/home/runner/.kube/config"
  config_context = "still-violet-23660725"
}

provider "helm" {
  kubernetes {
    # config_path = "C:/Users/user/.kube/config"
    config_path = "/home/runner/.kube/config"
    config_context = "still-violet-23660725"
  }
}

# output "helm_release_name" {
#   value = helm_release.crewmeister_app.name
# }