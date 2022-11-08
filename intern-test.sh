#!/usr/bin/bash

echo "Let's start our pipeline!"
echo $#
if [[ $# -ne 3 ]]; then
  echo "Number of arguments must be 3: Git-repo, filename and some number"
  exit 1
fi

echo "Git repo = ${1}"
echo "ARG1 = ${2}"
echo "ARG2 = ${3}"
