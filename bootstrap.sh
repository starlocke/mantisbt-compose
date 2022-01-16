#!/bin/bash

cd mantisbt
docker run --rm --interactive --tty --volume $(pwd):/app --user $(id -u):$(id -g) composer install
cd -
