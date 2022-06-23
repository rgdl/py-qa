#!/usr/bin/env sh

COLOUR="\033[0;35m"
NC="\033[0m"

echo "${COLOUR}"
echo "LINTING (flake8)"
echo $NC
flake8 $1 --ignore E402,E203,W503

echo "${COLOUR}"
echo "IMPORT ORDER CHECK (isort)"
echo $NC
isort $1 --check-only --diff --force-single-line-imports

echo "${COLOUR}"
echo "FORMAT CHECK (black)"
echo $NC
black $1 --check --diff --line-length=79 --color

echo "${COLOUR}"
echo "TYPE CHECK (mypy)"
echo $NC
mypy $1
