#!/bin/bash
set -e

docker pull hibakurdieh/final-python:latest

docker rm -f final-python || true

docker run -d \
  --restart unless-stopped \
  -p 80:5000 \
  --name final-python \
  hibakurdieh/final-python:latest

docker ps
