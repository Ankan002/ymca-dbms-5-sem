# SQL JOIN

JOINS:

- Inner Joins
- Outer Joins
- Cross Joins
- Self Joins

### Inner Joins:

```sql
-- ANSI STANDARD
SELECT <attr> FROM <table one> INNER JOIN <table two> ON <t1 attr> = <t2 attr>;

-- THETA STYLE
SELECT <attr> FROM <table one>, <table two> WHERE <join condition> AND <condition>;
```

- Query 1:

```sql
-- ANSI STYLE
SELECT E.f_name, E.l_name, D.d_name FROM EMP E INNER JOIN DEPT D ON E.d_no = D.d_num;

-- THETA STYLE
SELECT E.f_name, E.l_name, D.d_name FROM EMP E, DEPT D WHERE E.d_no = D.d_num;
```

- QUERY 2:

```sql
SELECT E.f_name, E.l_name FROM EMP E, PROJECT P, WORKS_ON W WHERE P.d_no = 5 AND P.p_num = W.p_no AND W.emp_id = E.emp_id;
```

### Outer Joins:

- Query 1:

```sql
-- ANSI STYLE:
SELECT * FROM EMP E LEFT JOIN DEPT D ON E.emp_id = D.mg_id;

-- THETA STYLE
SELECT * FROM EMP E, DEPT D WHERE E.emp_id = D.mg_id(+);
```

### Cross Joins:

- Query 1:

```sql
SELECT * FROM EMP E CROSS JOIN DEPT D;

SELECT * FROM EMP E, DEPT D;
```

### Self Joins:

```sql
SELECT E1.f_name, E1.l_name, E2.f_name, E2.l_name FROM EMP E1, EMP E2 WHERE E1.emp_id = E2.super_id;
```

## VIRTUAL TABLES: (VIEWS)

```sql
CREATE VIEW <name> AS SELECT <attr> FROM <table_name> WHERE <condition>
```

- Query 1:

```sql
CREATE VIEW EMP_V as SELECT emp_id, f_name, l_name, super_id FROM EMP;
```

Types:

- Updatable View: If we can insert or modify data in main table. If the primary key and all the not null attributes are included in the view then the view is always updatable. If primary key and not null attributes are not the part of view deletion and modification is still possible.

- Non Updatable View: If we cannot insert or modify data in main table.


