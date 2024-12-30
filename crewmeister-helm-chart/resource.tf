resource "helm_release" "crewmeister_application" {
  name      = "crewmeister"
  namespace = "default"
  chart     = "/home/runner/work/devops-coding-challenge/devops-coding-challenge/crewmeister-helm-chart"
  version   = "0.2.3"

  values = [
    <<EOF
service:
  type: ClusterIP
  port: 8080  # Ensure this is set

ingress:
  enabled: false  # Add this line to resolve ingress.enabled error
  className: ""
  annotations: []
  hosts:
    - host: crewmeister-app.local
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: []

serviceAccount:
  create: true
EOF
  ]
}
