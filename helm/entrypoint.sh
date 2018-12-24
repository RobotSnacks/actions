#!/bin/sh

if [[ -z "${GCLOUD_CLUSTER_NAME}" ]]; then
  echo \$GCLOUD_CLUSTER_NAME must be set.
  exit 1
fi

if [[ -z "${GCLOUD_PROJECT}" ]]; then
  echo \$GCLOUD_PROJECT must be set.
  exit 1
fi

if [[ -z "${GCLOUD_CLUSTER_ZONE}" ]]; then
  echo \$GCLOUD_CLUSTER_ZONE must be set.
  exit 1
fi

gcloud container clusters get-credentials \
  $GCLOUD_CLUSTER_NAME \
  --project=$GCLOUD_PROJECT \
  --zone=$GCLOUD_CLUSTER_ZONE

sh -c "helm $*"
