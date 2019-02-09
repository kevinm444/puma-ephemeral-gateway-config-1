ARG imageName
FROM $imageName
## Copying the deployment package
COPY build/gateway/ephemeral-gateway-latest.gw7 /opt/docker/rc.d/deployment.gw7
## Make restman available
RUN touch /opt/SecureSpan/Gateway/node/default/etc/bootstrap/services/restman
