FROM node:10

LABEL "com.github.actions.name"="yarn"
LABEL "com.github.actions.description"="Use the yarn CLI tool"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"
LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
