#!/usr/bin/env bash

mkdir -v build
cd build
docker build -t tsukisuperior/debian-ci-cd:latest ../
docker push tsukisuperior/debian-ci-cd:latest