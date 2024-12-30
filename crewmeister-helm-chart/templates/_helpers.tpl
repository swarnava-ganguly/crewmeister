{{- define "crewmeister.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end }}
