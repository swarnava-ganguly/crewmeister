# resource "kubernetes_namespace" "application_namespace" {
#   metadata {
#     name = "application"
#   }
#   labels = {
#       tire = "application"
#     }
# }

# resource "kubernetes_namespace" "database_namespace" {
#   metadata {
#     name = "database"
#   }
#   labels = {
#       tire = "database"
#     }
# }
