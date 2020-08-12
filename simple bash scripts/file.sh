#!/bin/bash
if [ -e $1 ]; then
  echo "File $1 already exists!"
else
  echo >> $1
fi
