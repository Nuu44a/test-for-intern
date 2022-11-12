#!/usr/bin/bash

echo "Let's start our pipeline!"
#echo "Number of parameters: $#"
#echo "Parameters as one string: $@"
#echo "Parameters as a different words: $*"
echo
#echo "Will start following string:"

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

# Generate an index.html

#  for VAR in $@; do
  for (( i=$START_ARG_NUM; i <= $NUM_OF_ARGS; i++ )); do
    STRING="$STRING ${!i}"
    echo ${i}
    echo $STRING
  done
fi
echo "python3 generate_html.py $STRING"
python3 generate_html.py $STRING
cat index.html
echo "docker build -t intern ."
docker build -t intern .
echo "docker run -it -p ${PORT}:80"
docker run -it -p ${PORT}:80 intern
echo "Finished"
