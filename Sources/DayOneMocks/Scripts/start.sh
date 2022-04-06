#!/bin/bash

WIREMOCK_DIR="$(pwd)/wiremock"

WIREMOCK_VERSION="2.32.0"
WIREMOCK_JAR="${WIREMOCK_DIR}/wiremock-standalone-${WIREMOCK_VERSION}.jar"

if [ ! -f "$WIREMOCK_JAR" ]; then
    mkdir -p "${VENDOR_DIR}" && cd "${VENDOR_DIR}"
    curl -O -J "https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/${WIREMOCK_VERSION}/wiremock-standalone-${WIREMOCK_VERSION}.jar"
    cd ..
fi
