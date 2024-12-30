{{- define "crewmeister.name" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "crewmeister.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}
