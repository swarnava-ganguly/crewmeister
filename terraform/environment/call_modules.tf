module "helmtf" {
    source = "../modules/helmtf"
    image_tag = var.image_tag
    docker_username = var.docker_username
    config_path = var.config_path
    config_context = var.config_context
    helm_release_name = var.helm_release_name
    helm_release_namespace = var.helm_release_namespace
    helm_chart_directory = var.helm_chart_directory
    helm_chart_values = var.helm_chart_values
}

module "monitoring" {
    source = "../modules/monitoring"
    config_path = var.config_path
    config_context = var.config_context
    monitoring_namespace = var.monitoring_namespace
}