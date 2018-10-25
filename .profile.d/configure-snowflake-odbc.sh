#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
database=${SNOWFLAKE_DATABASE}
warehouse=${SNOWFLAKE_WAREHOUSE}
schema=${SNOWFLAKE_SCHEMA}
SERVER=${SNOWFLAKE_ENDPOINT}
PORT=443
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
" > ${ODBCSYSINI}/odbc.ini
