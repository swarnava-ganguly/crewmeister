resource "kubernetes_namespace" "application_namespace" {
  metadata {
    name = "${var.application_namespace}"
    labels = {
      tire = "${var.application_namespace}"
    }
  }
  
}

resource "kubernetes_namespace" "database_namespace" {
  metadata {
    name = "${var.database_namespace}"
    labels = {
      tire = "${var.database_namespace}"
    }
  }
  
}
