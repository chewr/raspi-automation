#!/bin/bash

set -exou pipefail

source conf

OS=linux
ARCH=armv6l
VERSION=1.14.2

wget "https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz"

tar -C /usr/local -xzf "go${VERSION}.${OS}-${ARCH}.tar.gz"
