FROM node:10

LABEL "com.github.actions.name"="lerna"
LABEL "com.github.actions.description"="Use the lerna CLI tool"
LABEL "com.github.actions.icon"="arrow-up-circle"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/RobotSnacks/actions"
LABEL "homepage"="https://github.com/RobotSnacks/actions"
LABEL "maintainer"="Joshua Toenyes <josh@robotsnacks.io>"

RUN yarn global add lerna

ADD ./filter.sh /bin/filter
ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
