helm upgrade --install cert-manager \
    --namespace cert-manager \
    --version v1.8.0 \
    --set nodeSelector.node-type=master \
    --set webhook.nodeSelector.node-type=master \
    --set cainjector.nodeSelector.node-type=master \
    jetstack/cert-manager \
    --set installCRDs=true
