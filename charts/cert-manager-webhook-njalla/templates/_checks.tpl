{{- define "njalla-webhook.checkCertManager" -}}
{{- if not .Values.skipCertManagerCheck }}
  {{- if not (lookup "apps/v1" "Deployment" "cert-manager" .Values.namespace) }}
    {{ fail (printf "ERROR: cert-manager not found in namespace %q. Please install cert-manager first." .Values.namespace) }}
  {{- end }}
{{- end }}
{{- end -}}

{{- define "njalla-webhook.checkNjallaSecret" -}}
{{- if and (empty .Values.njalla.existingSecret) (empty .Values.njalla.token) }}
{{- fail "You must set either `njalla.existingSecret` or `njalla.token` in values.yaml" -}}
{{- end -}}
{{- end -}}

{{- define "njalla-webhook.checkGroupName" -}}
{{- if (empty .Values.groupName) }}
{{- fail "You must set `groupName` in values.yaml" -}}
{{- end -}}
{{- end -}}