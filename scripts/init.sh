#!/bin/bash

set -eu
cd $(dirname $0)/..

DIRNAME=contests/abc$1
shift
LABELS=$@


mkdir -p $DIRNAME
for label in $LABELS; do
  mkdir -p $DIRNAME/$label/inouts
  touch $DIRNAME/$label/main.rb
  ln -s ../../../scripts/test.sh $DIRNAME/$label/test.sh
done
