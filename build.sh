#!/usr/bin/env bash

mkdir -v build
cd build
docker build -t debian-ci-cd ../
docker tag debian-ci-cd tsukisuperior/debian-ci-cd:latest
docker push tsukisuperior/debian-ci-cd:latest