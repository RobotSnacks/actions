#! /bin/sh

NPM_REGISTRY=${NPM_REGISTRY:-"//registry.npmjs.org"}

if [ ! -z "${GIT_USER_EMAIL}" ]; then
  git config --global user.email "$GIT_USER_EMAIL"
fi

if [ ! -z "${GIT_USER_NAME}" ]; then
  git config --global user.name "$GIT_USER_NAME"
fi

if [ ! -z "${NPM_TOKEN}" ]; then
  npm config set ${NPM_REGISTRY}/:_authToken ${NPM_TOKEN}
  npm config set ${NPM_REGISTRY}/:always-auth true
  yarn config set ${NPM_REGISTRY}/:_authToken ${NPM_TOKEN}
  yarn config set ${NPM_REGISTRY}/:always-auth true
fi

sh -ec "lerna $*"
