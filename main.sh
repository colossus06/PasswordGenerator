#!/bin/bash

# A base64 password generator

echo This is a simple password generator.
echo Please enter the length of the password: 
read input




echo Do You prefer hex or base64 hex/base64? 
read choice

case $choice in
hex)
  for p in $(seq 1 5)
  do
          openssl rand -hex 48 | cut -c1-$input
  done
  ;;

base64)
  for p in $(seq 1 5)
  do
          openssl rand -base64 48 | cut -c1-$input
  done
  ;;
*)
  echo -n Enter a valid encoding algorithm
  ;;
esac