workflow "Lint Styles" {
  on = "push"
  resolves = ["Lint"]
}

action "Install" {
  uses = "actions/npm@master"
  args = "ci"
}

action "Lint" {
  needs = "Install"
  uses = "actions/npm@master"
  args = "test"
}
