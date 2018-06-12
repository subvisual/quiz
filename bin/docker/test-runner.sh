#!/bin/bash

set -e

test_path=$1

mix test $test_path
