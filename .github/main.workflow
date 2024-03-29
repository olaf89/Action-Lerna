workflow "Build and Publish" {
  on = "push"
  resolves = "Docker Publish"
}

action "Build" {
  uses = "actions/docker/cli@master"
  args = "build -t lerna-action ."
}

action "Docker Tag" {
  needs = ["Build"]
  uses = "actions/docker/tag@master"
  args = "lerna-action sourecode/lerna-action --no-latest"
}

action "Publish Filter" {
  needs = ["Build"]
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Docker Login" {
  needs = ["Publish Filter"]
  uses = "actions/docker/login@master"
  secrets = [
    "DOCKER_PASSWORD",
    "DOCKER_USERNAME",
  ]
}

action "Docker Publish" {
  needs = ["Docker Tag", "Docker Login"]
  uses = "actions/docker/cli@master"
  args = "push sourecode/lerna-action"
}
