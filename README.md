



Requires:

```sh
sudo apt install postgresql-client
```

[PostgreSQL commands](https://www.postgresqltutorial.com/psql-commands/)

```sh
psql --dbname=my_database --host=localhost --port=5432 --username=my_username --password
```

```sh
\dn
SET search_path TO my_schema;
select * from flyway_schema_history;
\q
```

