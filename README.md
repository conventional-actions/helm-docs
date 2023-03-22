# helm-docs

A GitHub Action for running Helm Docs.

## Usage

To use the GitHub Action, add the following to your job:

```yaml
- uses: conventional-actions/helm-docs@v1
  with:
    chart: charts/foobar
```

### Inputs

| Name          | Default  | Description        |
|---------------|----------|--------------------|
| `chart`       | `.`      | Chart directory    |

### Outputs

None

### Example

```yaml
on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - id: version
        name: Determine next version
        uses: conventional-actions/next-version@v1
      - uses: conventional-actions/helm-docs@v1
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE).
