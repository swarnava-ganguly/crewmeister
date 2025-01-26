variable image_tag {
  type        = string
  default     = "76487789b97848f1b92a27100282e32de02f2978"
  description = "application image tag"
}

variable docker_username {
  type        = string
  default     = "swarnava28"
  description = "description"
}

variable config_path {
  type        = string
  default     = "/home/runner/.kube/config" #/home/runner/.kube/config
  description = "kube config path"
}

variable config_context {
  type        = string
  default     = "still-violet-23660725"
  description = "Kube congif context"
}

variable helm_release_name {
  type        = string
  default     = "crewmeister"
  description = "Helm Release Names"
}

variable helm_release_namespace {
  type        = string
  default     = "default"
  description = "Helm Release Namespace"
}

variable helm_chart_directory {
  type        = string
  default     = "/home/runner/work/crewmeister/crewmeister/helm" #/home/runner/work/crewmeister/crewmeister/helm
  description = "Helm Directory"
}

variable helm_chart_values {
  type        = string
  default     = "/home/runner/work/crewmeister/crewmeister/helm/values.yaml" #/home/runner/work/crewmeister/crewmeister/helm/values.yaml
  description = "helm values file location" 
}
