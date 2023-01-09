#!/usr/bin/env bash
set -eux

command_exists() {
	command -v "$@" > /dev/null 2>&1
}
export DEBIAN_FRONTEND=noninteractive
export VERSION="${VERSION:-"latest"}"

# Check if jq is installed
if ! command_exists npm; then
    apt-get update && apt-get install -y jq
fi

if [ "$VERSION" = "latest" ]
then
    VERSION="$(curl https://api.github.com/repos/zricethezav/gitleaks/releases/latest | jq '.name')"
fi

echo "(*) Installing ${PACKAGE}..."

curl -sSL https://github.com/zricethezav/gitleaks/releases/download/${VERSION}/gitleaks_${VERSION#v}_linux_x64.tar.gz | tar xz -C /usr/bin gitleaks

echo "Done!"
