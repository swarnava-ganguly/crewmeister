{{- define "app-configuration" -}}
host: {{ .Values.config.host | quote }}
dbName: {{ .Values.config.dbName | quote }}
username: {{ .Values.config.username | quote }}
{{ end }}