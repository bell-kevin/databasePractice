SELECT
    *
FROM
    employees
LEFT JOIN dependents ON dependents.employee_id = employees.employee_id
UNION ALL
SELECT
    *
FROM
    employees
RIGHT JOIN dependents ON dependents.employee_id = employees.employee_id;
