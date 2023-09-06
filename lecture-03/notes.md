# Computations

1. Arithmetic Operations: +, -, \*, /, \*\*, ()

   - In SELECT Query & In WHERE Clause

   - Example:

   ```sql
   SELECT fname, lname, salary + salary * 0.1 FROM Employee
   ```

   - Using name change alias

   ```sql
   SELECT fname, lname, salary + salary * 0.1 "New Salary" FROM Employee
   ```

   ```sql
   SELECT fname, lname, salary + salary * 0.1 "New Salary" FROM Employee WHERE dno=5
   ```

2. Retrieve Details of employees along with 5000 rs increment in their salaries. The should belong to dept no 2 or 3 or 5.

```sql

```

3. Retrieve Details of employees whose salary is more than 50000 after 10% increment.

```sql
SELECT f_name, l_name, salary + salary * 0.1 FROM Employee WHERE salary + salary * 0.1 > 50000;
```

4. Aliasing

5. Logical Operators

6. Range Searching

   - `BETWEEN` and `AND` keyword

   ```sql
   SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 100000;
   ```

   ```sql
   SELECT * FROM Employee WHERE d_no BETWEEN 2 AND 6;
   ```

7. Pattern Matching

   - `LIKE` Keyword

   - Characters used to form patterns `%` and `_`

   - Example: `a%`

   ```sql
   SELECT * FROM WHERE f_name LIKE 'a%' or f_name LIKE 'A%';
   ```

   ```sql
   SELECT * FROM WHERE f_name LIKE '____' or f_name LIKE '_____';
   ```

   ```sql
   SELECT * FROM WHERE f_name LIKE 'b___' or f_name LIKE '_____';
   ```

   ```sql
   SELECT * FROM WHERE f_name LIKE 'b___' or f_name LIKE '_a%';
   ```

8. `IN` and `NOT IN` keyword

   ```sql
       SELECT * FROM WHERE dno IN (2,4,6,8);
   ```

9. Oracle Table `DUAL`

   ```sql
       SELECT 2 + 2 FROM DUAL;
   ```

10. AGGREGATE Functions:

    - `SUM` `COUNT` `MIN` `MAX` `AVERAGE`.

    ```sql
    SELECT FROM WHERE GROUP BY
    ```

    ```sql
    SELECT gender, dno, COUNT(emp_id), SUM(salary), MIN(salary), MAX(salary). AVG(salary)
    FROM Employee
    WHERE dno=5
    GROUP BY gender
    HAVING COUNT(emp_id) > 10;
    ```

11. Numeric Functions:

    - `sqrt`, `abs`, `power`, `mod`, `ext`, `round`, `truncate`, `floor`, `ceil`, `greatest`, `least`
