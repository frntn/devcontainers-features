

# Gitleaks (gitleaks)

Gitleaks is a SAST tool for detecting and preventing hardcoded secrets like passwords, api keys, and tokens in git repos

## Example Usage

```json
"features": {
    "ghcr.io/frntn/devcontainers-features/gitleaks:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select or enter a gitleaks version. | string | latest |

# Pre-requisites

`bash` is required to execute the `install.sh` script.

`apt`-based OS is expected to install jq pre-requisite (improvement planned)

# Versions

Available versions of Gitleaks can be found here: https://github.com/zricethezav/gitleaks/releases.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/frntn/devcontainers-features/blob/main/src/gitleaks/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
