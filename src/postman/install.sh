#!/usr/bin/env bash
set -eux

export DEBIAN_FRONTEND=noninteractive

echo "(*) Installing Postman CLI..."

curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh

echo "Done!"
