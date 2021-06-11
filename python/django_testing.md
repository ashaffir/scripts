# Issues

## I:
Got an error creating the test database: permission denied to create database

## S:
psql -d DB
DB=# ALTER USER username CREATEDB;


