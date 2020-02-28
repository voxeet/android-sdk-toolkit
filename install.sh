#!/bin/bash

rm -rf build */build

./gradlew :toolkit:licenseReleaseReport
cp toolkit/src/main/assets/open_source_licenses.json ./

./gradlew :cleanAll :assembleAll :installAll
