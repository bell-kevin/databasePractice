SELECT
    employees.first_name,
    employees.last_name,
    employees.email
FROM
    employees
CROSS JOIN dependents ON employees.employee_id = dependents.employee_id;
