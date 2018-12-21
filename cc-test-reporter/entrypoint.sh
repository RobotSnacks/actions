#! /bin/sh

set -e

# The URL where we should download the test reporter.
CC_REPORTER_URL=https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64

if [ -z "$CC_TEST_REPORTER_ID" ]; then
  echo "CC_TEST_REPORTER_ID not set. Cannot send coverage to Code Climate."
  exit 1
else
  curl -L $CC_REPORTER_URL > /cc-test-reporter
  chmod +x /cc-test-reporter
  /cc-test-reporter before-build
  sh -ec "$*"
  /cc-test-reporter after-build --exit-code $?
fi
