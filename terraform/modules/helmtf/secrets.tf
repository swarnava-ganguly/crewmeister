resource "kubernetes_secret" "application_secret" {
  metadata {
    name = "java-app-secrets"
    namespace = "${var.application_namespace}"
  }

  data = {
    username = "root" # DB_USERNAME
    password = "${var.db_root_password}" # DB_ROOT_PASSWORD
    userpassword: "${var.db_user_password}" # DB_USER_PASSWORD
  }

  type = "kubernetes.io/basic-auth"
}

resource "kubernetes_secret" "database_secret" {
  metadata {
    name = "mysql-secrets"
    namespace = "${var.database_namespace}"
  }

  data = {
    password: "${var.db_root_password}" # DB_ROOT_PASSWORD
    userpassword: "${var.db_user_password}" # DB_USER_PASSWORD
  }

  type = "kubernetes.io/basic-auth"
}

resource "kubernetes_secret" "myregistrykey_application" {
  metadata {
    name = "myregistrykey"
    namespace = "${var.application_namespace}"
  }

  type = "kubernetes.io/dockerconfigjson"

  data = {
    ".dockerconfigjson" = jsonencode({
      auths = {
        "https://index.docker.io/v1/" = {
          "username" = var.registry_username
          "password" = var.registry_password
          "email"    = var.registry_email
          "auth"     = base64encode("${var.registry_username}:${var.registry_password}")
        }
      }
    })
  }
}

