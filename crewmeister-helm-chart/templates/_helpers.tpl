{{- define "crewmeister.name" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "crewmeister.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "crewmeister.serviceAccountName" -}}
{{- default .Release.Name .Values.serviceAccountName -}}
{{- end -}}