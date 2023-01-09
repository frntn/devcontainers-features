# frntn/devcontainers-features

This repo provides the packages for [devcontainer features](https://containers.dev/implementors/features/), hosted for free on GitHub Container Registry.

The name of the repo follows the naming convention of the source repo : 
 - github .com/`devcontainers/features`
 - github .com/frntn/`devcontainers-features`

## Packages

This repository contains a _collection_ of the following features :
 - `newman` : the command-line collection runner for Postman

### `newman`

It requires `npm` so must use a container with `nodejs` installed first.

Simply reference `newman` package inside your `.devcontainer.json`.

#### Example 1 : Pre-built node image - Debian Bullseye - 1.27 GB

Add the following files in `.devcontainer.json` file

```jsonc
// .devcontainer.json
{
    "name": "My Dev Container Name",
    "image": "mcr.microsoft.com/devcontainers/javascript-node:0-18",
    "features": {
        "ghcr.io/frntn/devcontainers-features/newman:latest": {
            "version": "5.3.2"
        }
    },
    "remoteUser": "node"
}
```

#### Example 2 : Built from base image - Ubuntu Jammy - 485 MB

Add the following files in `.devcontainer` folder

```jsonc
// .devcontainer/devcontainer.json
{
    "name": "My Dev Container Name",
    "build": {
        "dockerfile": "Dockerfile.nodejs"
    },
    "features": {
        "ghcr.io/frntn/devcontainers-features/newman:latest": {
            "version": "5.3.2"
        }
    },
    "remoteUser": "root"
}
```

```dockerfile
# .devcontainer/Dockerfile.nodejs
FROM mcr.microsoft.com/devcontainers/base:ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
```
