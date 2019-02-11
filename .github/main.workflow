workflow "Lint Styles" {
  on = "push"
  resolves = ["Lint Styles"]
}

action "Install" {
  uses = "actions/npm@4633da3702a5366129dca9d8cc3191476fc3433c"
  args = "ci"
}

action "Lint" {
  uses = "actions/npm@4633da3702a5366129dca9d8cc3191476fc3433c"
  args = "test"
}
