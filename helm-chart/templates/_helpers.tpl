{{/*
Expand the name of the chart.
*/}}
{{- define "cryptox.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "cryptox.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride -}}
{{- else -}}
{{- include "cryptox.name" . -}}
{{- end -}}
{{- end -}}
