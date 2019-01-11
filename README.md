# GitHub Action for Lerna

This Action for [lerna](https://lernajs.io/) enables arbitrary actions with the `lerna` command-line client, including linting and testing packages.

## Usage

An example workflow to build, test, and publish an npm package to the default public registry follows:

```hcl
action "Build" {
  uses = "SoureCode/Lerna-Action@master"
  args = "run build"
}

action "Lint" {
  uses = "SoureCode/Lerna-Action@master"
  args = "run lint"
}

action "Test" {
  uses = "SoureCode/Lerna-Action@master"
  args = "run test"
}
```

### Secrets

**Todo**

### Environment variables

**Todo**

#### Example

**Todo**

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
