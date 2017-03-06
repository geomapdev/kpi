#!/usr/bin/env bash
set -e

DOCKER_DIR="$(dirname ${0})"
REPO_ROOT="$(dirname ${DOCKER_DIR})"
(
    cd "${REPO_ROOT}"
    docker build -t kobotoolbox/koboform_base -f Dockerfile.koboform_base .
    docker build -t kobotoolbox/kpi .
)

