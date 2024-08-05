#!/bin/bash

sudo docker run \
    --rm --entrypoint "" \
    --name=db_bak \
    --net=shvirtd-example-python_backend \
    -v=/opt/backup:/backup \
    --env-file=.env \
    --env=DB_USER=${MYSQL_USER} \
    --env=DB_PASSWORD=${MYSQL_PASSWORD} \
    schnitzler/mysqldump \
    mysqldump --opt -h shvirtd-example-python-db-1 --user=[DB_USER] --password=[DB_PASSWORD] --result-file=/backup/dumps.sql virtd [requests]


#!/bin/sh

docker run \
    --rm --entrypoint "" \
    --name=db_bak \
    --net=shvirtd-example-python_backend \
    -v=/opt/backup:/backup \
    --env-file=.env \
    --env=DB_USER=${MYSQL_USER} \
    --env=DB_PASSWORD=${MYSQL_PASSWORD} \
    schnitzler/mysqldump \
    mysqldump --opt --default-auth=caching_sha2_password -h shvirtd-example-python-db-1 -u${MYSQL_USER} -p${MYSQL_PASSWORD} --result-file=/backup/dumps.sql virtd [requests]



docker exec shvirtd-example-python-db-1 mysqldump -uroot -p${MYSQL_pas} -e "--result-file="/backup/dumps.sql" virtd;"

docker exec shvirtd-example-python-db-1 mysqldump -uroot -p${MYSQL_pas} -e "SELECT user, host, plugin from mysql.user WHERE plugin='mysql_native_password';"

--default-auth=mysql_native_password
--default-auth=caching_sha2_password

LOSE