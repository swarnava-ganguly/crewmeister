{{- define "database-configuration" -}}
dbName: {{ .Values.config.dbName | quote }}
username: {{ .Values.config.username | quote }}
{{ end }}