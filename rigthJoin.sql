SELECT
    employees.first_name,
    employees.last_name
FROM
    employees
RIGHT JOIN dependents ON dependents.employee_id = employees.employee_id;
