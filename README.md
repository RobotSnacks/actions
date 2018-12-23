# GitHub Actions

Collection of Github Actions used in Robot Snacks projects.

Many of these actions are based-on (or inspired by) [GitHub's own set of
actions](https://github.com/actions). See that repository for more examples and
use cases.

---

**Important:** GitHub actions must be publicly available over the internet, so
pushing these to a private Docker repository (like gcr.io) will make them
unavailable to GitHub actions. Additionally, any images used in these actions
(base images, etc.) must also be publicly available if the actions are built at
runtime. Hopefully this will change in the future as GitHub actions evolve.

---

## Actions

### `cc-test-reporter`

Test-running wrapper image which sends coverage metrics to [Code Climate](https://codeclimate.com),

### `docker`

Docker-in-Docker image for building other images, or interacting with the Docker
cli.

### `gcloud-auth`

Image used for authenticating the Google Cloud using a service account.

### `gcloud-docker`

Docker-in-Docker image, similar to `docker`, except this image authenticates
with Google Cloud and configures docker for pushing to a gcr.io repository.

### `yarn`

Image for running commands with the `yarn` cli.
