# FMP
Financial Modeling Prep API https://site.financialmodelingprep.com/developer/docs/

This repository contains following services. Please watch for the following ports in-use conflict.

1. Glue development environment
 - Jupyter notebook => http://127.0.0.1:8888/  as glue_user
 - Spark history server => http://127.0.0.1:18080/

2. Postgresql database
 - http://127.0.0.1:5432/ as postgres/postgres db:datawarehouse
 - initial schemas defined in initdb/initdb.sql

3. DBeaver cloud for dbclient
 - http://127.0.0.1:1111/ as cbadmin/cbadmin
 - check for db datawarehouse

Note that: 
- DBeaver cloud comes with preconfig to local postgresql
- AWS credential is intentionally left unconfig (for local development purpose)
