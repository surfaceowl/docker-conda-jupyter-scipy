#!/usr/bin/env bash
set -e

echo docker pull jupyter/scipy-notebook
docker pull jupyter/scipy-notebook

mkdir notebooks

echo docker build -t conda-ds-container .
docker build -t conda-ds-container .

echo docker run -d -p 8888:8888 --name conda-ds-container conda-ds-container:latest
docker run -d -p 8888:8888 --name conda-ds-container conda-ds-container:latest
