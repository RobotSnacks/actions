FROM node:10

LABEL "com.github.actions.name"="cc-test-reporter"
LABEL "com.github.actions.description"="Run tests and send coverage report to Code Climate."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"
LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
