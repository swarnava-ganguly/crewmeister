{{- define "crewmeister.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "crewmeister.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}
