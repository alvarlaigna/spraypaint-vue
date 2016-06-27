#!/usr/bin/env bash

# run in subshell to avoid polluting cwd
(
# if the tests fail, abort (errexit)
set -e

# validate all test files
( exec "./scripts/lint-tests.sh" )

# run Mocha tests on node.js
echo "> running tests..."

./node_modules/.bin/mocha test/specs/**/*.ts* -R spec --bail
)



