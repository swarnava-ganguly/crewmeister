{{- define "crewmeister.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "crewmeister.name" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "crewmeister.labels" -}}
app.kubernetes.io/name: {{ include "crewmeister.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "crewmeister.selectorLabels" -}}
app.kubernetes.io/name: {{ include "crewmeister.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
