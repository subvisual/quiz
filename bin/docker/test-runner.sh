#!/bin/bash

set -e

test_path=$1

# test environment setup
if [ -z $test_path ]; then
  mix test
else
  str=$(echo $test_path | sed -r 's/apps\/([^/]+)\/(.*)/\1 \2/')
  components=($str)

  app=${components[0]}
  file=${components[1]}

  mix cmd --app $app mix test $file
fi
