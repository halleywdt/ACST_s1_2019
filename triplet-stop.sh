#!/bin/bash
# save as triplet-stop.sh
# splits a sequence into triplets
x=0
while [ -n "${1:$x:3}" ]; do
  seq=$seq${1:$x:3}" "
  x=$(expr $x + 3)
  if [ ${1:$x:3} == taa ] && [ $x -ge 9 ]; then
    break
  fi
done
echo "$seq"

