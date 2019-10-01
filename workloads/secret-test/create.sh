echo "$(cat << EOF
apiVersion: v1
kind: Secret
metadata:
  name: secret-from-flux-manifest
type: Opaque
data:
  config.yaml: '$(cat fake.yaml | base64 -w 0)'
  config2.yaml: '$(cat fake.yaml | base64 -w 0)'
EOF
)"