#!/bin/bash

set -e

release=2.4.0

docker build -t krautit/irssi-autodl:${release} -t krautit/irssi-autodl:latest .
docker push krautit/irssi-autodl:${release}
docker push krautit/irssi-autodl:latest
