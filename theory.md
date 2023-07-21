# DBMS

### Types of SQL Language:

- DDL -> `CREATE`, `ALTER`, `DROP`, `DESCRIBE (DESC)`, `CREATE VIEW`
- DML -> `SELECT`, `INSERT INTO`, `UPDATE`, `DELETE`, `TRUNCATE`
- DCL -> `GRANT`, `REVOKE`, `SAVEPOINT`, `ROLLBACK`

### Some Datatype:

- char() -> fixed length (10, 255)
- varchar() -> variable character length. Should use this
- number(p, s) -> precision, scale
- data()
- int()

```
DATE FORMAT -> MM-MONTH(FEB)-YYYY
```

### CREATE TABLE

```sql
CREATE TABLE <table_name> (<atl_1_name> <atl_1_type>, <atl_2_name> <atl_2_type>);
```

### SELECT System Date

```sql
SELECT sysdate from dual;
```

### INSERT INTO TABLE

```sql
INSERT INTO <table_name> VALUES (<attribute_1>, <attribute_2>, <attribute_2>)
```
