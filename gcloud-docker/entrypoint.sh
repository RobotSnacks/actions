#!/bin/sh

set -e

sh -c "gcloud auth configure-docker"
sh -c "docker $*"
