#!/bin/bash

# API
ARCHIVE_LOCATION_API="$PWD/build/local-build-api.zip"
mkdir -p build
npm run build

pushd build
zip -r ${ARCHIVE_LOCATION_API} api-lambda.js >/dev/null
popd 

pushd pipeline
terraform apply
popd
