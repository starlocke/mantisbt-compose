#!/bin/bash

cd mantisbt
docker run --rm --interactive --tty --volume $(pwd):/app --user $(id -u):$(id -g) composer install --ignore-platform-reqs
cd -
cp ./mantisbt/config/config_inc.quick.php ./mantisbt/config/config_inc.php
SALT=$(cat /dev/urandom | head -c 64 | base64)
echo "\$g_crypto_master_salt     = '$SALT';" >> ./mantisbt/config/config_inc.php
