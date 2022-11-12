#!/usr/bin/bash

echo "Let's start our pipeline!"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

STRING=""
NUM_OF_ARGS=$#
START_ARG_NUM=1
# set default port
PORT=8080 

# is any arguments here?
if [[ $NUM_OF_ARGS -ge 1 ]]; then
# is the fisrt argument a number?
  if [[ $1 =~ ^[0-9]+$ ]]; then
# is this number an actual port number?
    if [[ ($1 -gt 0) && ($1 -le 65535) ]]; then
# will use it as a port number, owervise - default port
      PORT=$1
      START_ARG_NUM=2
    fi
  fi

# Prepearing string of arguments for generating index.html
  for (( i=$START_ARG_NUM; i <= $NUM_OF_ARGS; i++ )); do
    STRING="$STRING ${!i}"
  done
fi

# Generating index.html
python3 generate_html.py $STRING

# Build docker image
docker build -t intern .

# Run docker container
docker run -it -p ${PORT}:80 intern

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "Finished"
