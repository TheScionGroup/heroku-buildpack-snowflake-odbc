#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "
[ODBC Data Sources]
SnowflakeDSII = Snowflake

[SnowflakeDSII]
Server = ${SNOWFLAKE_SERVER}
Warehouse = ${SNOWFLAKE_WAREHOUSE}
Driver=SnowflakeDSIIDriver
Description = SnowflakeDSII
Locale = en-US
Tracing = 0
Role = READ_ONLY
" > ${ODBCSYSINI}/odbc.ini
