#! /bin/sh

if [[ -z "${GIT_USER_EMAIL}" ]]; then
  echo \$GIT_USER_EMAIL must be set.
  exit 1
fi

if [[ -z "${GIT_USER_NAME}" ]]; then
  echo \$GIT_USER_NAME must be set.
  exit 1
fi

git config --global user.email "$GIT_USER_EMAIL" \
  && git config --global user.name "$GIT_USER_NAME" \
  && sh -ec "lerna $*"
