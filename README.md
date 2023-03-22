# helm-docs

A GitHub Action for running Helm Docs.

## Usage

To use the GitHub Action, add the following to your job:

```yaml
- uses: conventional-actions/helm-docs@v1
  with:
    chart-search-root: ./charts/foobar
```

### Inputs

| Name                | Default            | Description                                                                                         |
|---------------------|--------------------|-----------------------------------------------------------------------------------------------------|
| `chart-search-root` | `.`                | directory to search recursively within for charts                                                   |
| `badge-style`       | `flat-square`      | badge style to use for charts                                                                       |
| `ignore-file`       | `.helmdocsignore`  | The filename to use as an ignore file to exclude chart directories                                  |
| `log-level`         | `info`             | Level of logs that should printed, one of (panic, fatal, error, warning, info, debug, trace)        |
| `output-file`       | `README.md`        | markdown file path relative to each chart directory to which rendered documentation will be written |
| `sort-values-order` | `alphanum`         | order in which to sort the values table ("alphanum" or "file")                                      |
| `template-files`    | `README.md.gotmpl` | gotemplate file paths relative to each chart directory from which documentation will be generated   |
| `values-file`       | `values.yaml`      | Path to values file                                                                                 |

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
