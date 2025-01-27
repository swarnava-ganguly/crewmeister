module "helmtf" {
    source = "../modules/helmtf"
    image_tag = var.image_tag
    config_path = var.config_path
    config_context = var.config_context
    helm_release_name = var.helm_release_name
    helm_release_namespace = var.helm_release_namespace
    helm_chart_directory = var.helm_chart_directory
    helm_chart_values = var.helm_chart_values
    application_namespace = var.application_namespace
    database_namespace = var.database_namespace
    registry_username = var.registry_username
    registry_password = var.registry_password
    registry_email = var.registry_email
    db_root_password = var.db_root_password
    db_user_password = var.db_user_password
}

module "monitoring" {
    source = "../modules/monitoring"
    config_path = var.config_path
    config_context = var.config_context
    monitoring_namespace = var.monitoring_namespace
}