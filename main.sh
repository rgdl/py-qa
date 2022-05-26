#!/usr/bin/env sh

COLOUR="\033[0;35m"
NC="\033[0m"

echo "${COLOUR}"
echo "LINTING"
echo $NC
flake8 $1

echo "${COLOUR}"
echo "IMPORT ORDER CHECK"
echo $NC
isort $1 --check-only

echo "${COLOUR}"
echo "FORMAT CHECK"
echo $NC
black $1 --check

echo "${COLOUR}"
echo "TYPE CHECK"
echo $NC
mypy $1
