#!/bin/zsh
rm -rf out
swagger-codegen generate \
  -DconfigPackage=de.rage.cvapi.configuration \
  -i openapi.yml \
  -l java \
  -o out \
  --api-package de.rage.cvapi.controllers \
  --model-package de.rage.cvapi.model \
  --invoker-package de.rage.cvapi \
  --group-id de.rage.cvapi \
  --artifact-id cvapi \
  --artifact-version 1.4-SNAPSHOT \
  --library resttemplate \
  --additional-properties dateLibrary=java8-localdatetime