echo "$(cat << EOF
apiVersion: v1
kind: Secret
metadata:
  name: secret-from-flux-manifest
type: Opaque
data:
  config4.yaml: "$(cat fake.yaml | base64 -w 0)"
  config3.yaml: "$(cat fake.yaml | base64 -w 0)"
EOF
)"