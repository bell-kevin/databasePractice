SELECT
    CONCAT(
        employees.first_name,
        ' ',
        employees.last_name
    ) AS employee,
    CONCAT(
        supv.first_name,
        ' ',
        supv.last_name
    ) AS boss
FROM
    employees
LEFT JOIN employees AS supv
ON
    employees.manager_id = supv.employee_id;
