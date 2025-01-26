# resource "kubernetes_secret" "application_secret" {
#   metadata {
#     name = "java-app-secrets"
#     namespace = "application"
#   }

#   data = {
#     username = "****" # DB_USERNAME
#     password = "****" # DB_ROOT_PASSWORD
#     userpassword: "****" # DB_USER_PASSWORD
#   }

#   type = "kubernetes.io/basic-auth"
# }

# resource "kubernetes_secret" "database_secret" {
#   metadata {
#     name = "mysql-secrets"
#     namespace = "database"
#   }

#   data = {
#     password: "****" # DB_ROOT_PASSWORD
#     userpassword: "****" # DB_USER_PASSWORD
#   }

#   type = "kubernetes.io/basic-auth"
# }

# resource "kubernetes_secret" "myregistrykey_application" {
#   metadata {
#     name = "myregistrykey"
#   }

#   type = "kubernetes.io/dockerconfigjson"

#   data = {
#     ".dockerconfigjson" = jsonencode({
#       auths = {
#         "${var.registry_server}" = {
#           "username" = var.registry_username
#           "password" = var.registry_password
#           "email"    = var.registry_email
#           "auth"     = base64encode("${var.registry_username}:${var.registry_password}")
#         }
#       }
#     })
#   }
# }

# resource "kubernetes_secret" "myregistrykey_database" {
#   metadata {
#     name = "myregistrykey"
#   }

#   type = "kubernetes.io/dockerconfigjson"

#   data = {
#     ".dockerconfigjson" = jsonencode({
#       auths = {
#         "${var.registry_server}" = {
#           "username" = var.registry_username
#           "password" = var.registry_password
#           "email"    = var.registry_email
#           "auth"     = base64encode("${var.registry_username}:${var.registry_password}")
#         }
#       }
#     })
#   }
# }

