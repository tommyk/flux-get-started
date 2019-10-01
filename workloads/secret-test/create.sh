echo "$(cat << EOF
apiVersion: v1
kind: Secret
metadata:
  name: secret-from-flux-manifest
type: Opaque
data:
  config5.yaml: $(cat fake.yaml | base64 | tr -d '\n')
  config6.yaml: $(cat fake.yaml | base64 | tr -d '\n')
EOF
)"