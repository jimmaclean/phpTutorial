#!/usr/bin/env bash

set -x
set -e

if [[ $(cat *.md | aspell -p ./.spelling/wordlist list) ]]; then
  exit 1
fi