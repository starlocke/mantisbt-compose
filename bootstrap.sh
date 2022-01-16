#!/bin/bash

cd mantisbt
docker run --rm --interactive --tty --volume $(pwd):/app --user $(id -u):$(id -g) composer install --ignore-platform-reqs
cd -
cp ./mantisbt/config/config_inc.quick.php ./mantisbt/config/config_inc.php
UUID=$(docker run --rm alpine cat /proc/sys/kernel/random/uuid)
echo "\$g_crypto_master_salt     = '$UUID';" >> ./mantisbt/config/config_inc.php
