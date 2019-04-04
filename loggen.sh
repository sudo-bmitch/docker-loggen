#!/bin/sh

trap 'exit' SIGTERM

for i in $(seq 1 ${2:-100}); do
  date
  dd if=/dev/urandom bs=1024 count=${1:-100} 2>/dev/null | base64
  sleep 1
done

