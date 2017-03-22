#!/bin/sh
set -euo pipefail
IFS=$'\n\t'

mkdir -p /tmp/closure

packages=(znc nginx mysql i2p)

for package in "${packages[@]}"
do
    nix-store --export $(nix-store -qR $(type -p $package)) > /tmp/closure/$package.closure
done
