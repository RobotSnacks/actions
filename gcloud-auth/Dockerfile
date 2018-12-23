FROM google/cloud-sdk:228.0.0-alpine

LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"
LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"

LABEL "com.github.actions.name"="Google Cloud SDK Auth"
LABEL "com.github.actions.description"="Authenticates with Google Cloud using a service account."
LABEL "com.github.actions.icon"="log-in"
LABEL "com.github.actions.color"="green"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
