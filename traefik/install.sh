helm upgrade --install traefik \
    --namespace traefik \
    traefik/traefik \
    --version 10.21.1 \
    -f values.yaml
