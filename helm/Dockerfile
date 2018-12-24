FROM google/cloud-sdk:228.0.0-alpine

LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"
LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"

LABEL "com.github.actions.name"="Helm"
LABEL "com.github.actions.description"="Perform deployment and Kubernetes configuration with Helm."
# LABEL "com.github.actions.icon"="log-in"
# LABEL "com.github.actions.color"="green"

RUN curl https://storage.googleapis.com/kubernetes-helm/helm-v2.12.1-linux-amd64.tar.gz | tar xzO linux-amd64/helm > /usr/local/bin/helm \
  && chmod +x /usr/local/bin/helm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
