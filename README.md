# python-style-check
GitHub Action for isort, flake8 and black

## Usage

Example workflow to test python style:

```hcl
workflow "Style check on push" {
  on = "push"
  resolves = ["Style check"]
}

action "Style check" {
  uses = "bulv1ne/python-style-check@master"
}
```
