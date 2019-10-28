#!/bin/bash

set -e

release=${1-2.6.0}
release_latest=2.6.0

docker build -t "krautit/irssi-autodl:${release}" .
docker push "krautit/irssi-autodl:${release}"

if [ "${release}" = "${release_latest}" ]; then
  docker build --build-arg release="${release}" -t krautit/irssi-autodl:latest .
  docker push krautit/irssi-autodl:latest
fi
