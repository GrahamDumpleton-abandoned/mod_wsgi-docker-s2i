#!/usr/bin/env bash

# The master for this script exists in the Python '2.7' directory. Do
# not edit the version of this script found in other directories. When
# the version of the script in the Python '2.7' directory is modified,
# it must then be be copied into other directories. This is necessary as
# Docker when building an image cannot copy in a file from outside of
# the directory where the Dockerfile resides.

set -eo pipefail

PYTHON_VERSION_MN=`echo $PYTHON_VERSION | sed -e 's/\.[^.]*$//'`
BUILDER_NAME="mod_wsgi-docker-s2i:python-$PYTHON_VERSION_MN"

cat <<EOF
This is a S2I builder for creating Docker images for Python web applications.

To use the builder, first install S2I from:

    https://github.com/openshift/source-to-image

You can then create a Docker image from a GIT repository by running:

    s2i build git://<source code> $BUILDER_NAME <application image>

The resulting image can then be run as:

    docker run -p 8000:80 <application image>

The S2I builder is also compatible with the builtin support of OpenShift 3
for deploying applications using S2I.
EOF
