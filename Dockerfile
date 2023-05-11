FROM google/cloud-sdk:alpine
RUN apk add openssl yq;
RUN curl -LO "https://dl.k8s.io/release/v1.27.1/bin/linux/amd64/kubectl"; \
    chmod +x kubectl; \
    mv kubectl /usr/local/bin/; 
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3;  \
    chmod +x get_helm.sh; \
    ./get_helm.sh;
RUN gcloud components install gke-gcloud-auth-plugin; \
    gcloud components install kubectl;

