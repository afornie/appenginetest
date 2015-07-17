#!/bin/bash

if [ "${TRAVIS_BRANCH}" == "rc" ] && [ "${TRAVIS_PULL_REQUEST}" == "false" ]; then
  appengine-java-sdk-1.9.23/bin/appcfg.sh update appengine-modules-ear/build/exploded-app
  echo "In rc branch or PR"
  echo "${TRAVIS_BRANCH}"
  echo "${TRAVIS_PULL_REQUEST}"
else
  echo "Not in rc branch or PR"
  echo "${TRAVIS_BRANCH}"
  echo "${TRAVIS_PULL_REQUEST}"
fi;