FROM node:10

LABEL "com.github.actions.name"="gulp"
LABEL "com.github.actions.description"="Use the gulp CLI tool"
LABEL "com.github.actions.icon"="coffee"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"
LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"

RUN yarn global add gulp

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
