FROM docker:stable

LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"
LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"

LABEL "com.github.actions.name"="Google Cloud SDK Configure Docker"
LABEL "com.github.actions.description"="Configures Docker for pushing to Google Cloud."
LABEL "com.github.actions.icon"="log-in"
LABEL "com.github.actions.color"="green"

ARG CLOUD_SDK_VERSION=228.0.0

ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION
ENV PATH /google-cloud-sdk/bin:$PATH

RUN apk --no-cache add \
    curl \
    python \
    py-crcmod \
    bash \
    libc6-compat \
    openssh-client \
    git \
    gnupg \
    make \
  && curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz \
  && tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz \
  && rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz \
  && ln -s /lib /lib64 \
  && gcloud config set core/disable_usage_reporting true \
  && gcloud config set component_manager/disable_update_check true \
  && gcloud config set metrics/environment github_docker_image \
  && gcloud --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
