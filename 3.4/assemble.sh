#!/usr/bin/env bash

# The master for this script exists in the Python '2.7' directory. Do
# not edit the version of this script found in other directories. When
# the version of the script in the Python '2.7' directory is modified,
# it must then be be copied into other directories. This is necessary as
# Docker when building an image cannot copy in a file from outside of
# the directory where the Dockerfile resides.

set -eo pipefail

if [ "$1" = "-h" ]; then
    exec /usr/local/s2i/bin/usage
fi

echo "---> Installing application source"

cp -Rf /tmp/src/. /app

echo "---> Building application from source"

mod_wsgi-docker-build
