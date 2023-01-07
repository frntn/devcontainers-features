#!/usr/bin/env bash
set -eux

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

export DEBIAN_FRONTEND=noninteractive
export VERSION="${VERSION:-"latest"}"
export PACKAGE="newman@${VERSION}"

# Check if npm is installed
if ! command_exists npm; then
    echo -e 'Feature requires npm to be installed. Please use a node-based image'
    echo -e 'Example images : '
    echo -e ' - "mcr.microsoft.com/devcontainers/universal:linux" => Multi-purpose developer image / Ubuntu Focal / 11.4 GB'
    echo -e ' - "mcr.microsoft.com/devcontainers/javascript-node:0-18" => Node image / Debian Bullseye / 1.27 GB'
    exit 1
fi

echo "(*) Installing ${PACKAGE}..."

npm install -g "$PACKAGE"

echo "Done!"
