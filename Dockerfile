FROM alpine:3.11.5

ARG KUBECTL_VERSION=1.8.0
ARG DOCTL_VERSION=1.43.0
ARG HELM_VERSION=3.2.0
ARG DOCKER_CLI_VERSION="19.03.8"
ARG SOPS_VERSION=3.5.0

RUN apk update && apk add --no-cache \
    bash \
    curl \
    ca-certificates \
    make \
    git \
    tar \
    gzip \
    gnupg 

# install docker client
RUN mkdir -p /tmp/download \
    && curl -L https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLI_VERSION}.tgz | tar -xz -C /tmp/download \
    && mv /tmp/download/docker/docker /usr/local/bin/ \
    && rm -rf /tmp/download && \
    docker -v

# Install kubectl
RUN curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    kubectl version --client

# Install doctl
RUN curl -LO https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz && \
    tar -xvf doctl-${DOCTL_VERSION}-linux-amd64.tar.gz && \
    mv doctl /usr/local/bin/doctl && \
    rm -f doctl-${DOCTL_VERSION}-linux-amd64.tar.gz \
    doctl version

# Install helm
RUN curl -L -o helm.tar.gz https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    tar -xvf helm.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm && \
    rm -rf linux-amd64 && \
    rm helm.tar.gz && \
    helm version && \
    helm plugin install https://github.com/futuresimple/helm-secrets

# Install sops
RUN curl -L -o /usr/local/bin/sops https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux && \
    sops -v

CMD ["bash"]