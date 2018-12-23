# robotsnacks/actions/docker

This action runs Docker CLI commands for building, tagging, and pushing images
(Docker-in-Docker). This action is very similar to GitHub's `docker` action, but
we've added additional tools, such as `make` to make the build process simpler.

## Example Action Using `make`
```
action "Build Docker Images" {
  uses = "robotsnacks/actions/docker@master"
  runs = "sh -c"
  args = "make all"
}
```
