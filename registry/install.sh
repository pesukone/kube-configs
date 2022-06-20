helm upgrade --install docker-registry \
    --namespace container-registry \
    --set replicaCount=1 \
    --set persistence.enabled=true \
    --set persistence.size=50Gi \
    --set persistence.deleteEnabled=true \
    --set persistence.storageClass=docker-registry-local-storage \
    --set persistence.existingClaim=docker-registry-pvc \
    --set secrets.htpasswd=$(cat ./auth/htpasswd) \
    --set nodeSelector.node-type=master \
    twuni/docker-registry \
    --version 2.1.0
