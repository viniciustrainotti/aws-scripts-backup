#!/bin/bash

# # Requirements
# install postgresql-client
# $ sudo apt update
# $ sudo apt install -y postgresql-client
# # Tunnel with bastian AWS RDS
# $ ssh ubuntu@10.1.1.1 -L 5432:database.hashaws123456.us-east-1.rds.amazonaws.com:5432

set -eou pipefail

DATABASE="${1}"
DATE=$(date '+%Y%m%d')
# DUMP
pg_dump -h 127.0.0.1 -p 5432 -U postgres -d "$DATABASE" > "database_"$DATABASE"_"$DATE".sql"
# RESTORE
# psql -U postgres -h 127.0.0.1 -d sure < database_sure_20221228.sql