SELECT
    CONCAT(level1.first_name, ' ', level1.last_name) AS Level_1
    ,CONCAT(level2.first_name, ' ', level2.last_name) AS Level_2
    ,CONCAT(level3.first_name, ' ', level3.last_name) AS Level_3
    ,CONCAT(level4.first_name, ' ', level4.last_name) AS Level_4
    ,CONCAT(level5.first_name, ' ', level5.last_name) AS Level_5
    ,CONCAT(level6.first_name, ' ', level6.last_name) AS Level_6
FROM
    employees AS level1
RIGHT JOIN employees AS level2 ON level1.employee_id = level2.manager_id
RIGHT JOIN employees AS level3 ON level2.employee_id = level3.manager_id
RIGHT JOIN employees AS level4 ON level3.employee_id = level4.manager_id
RIGHT JOIN employees AS level5 ON level4.employee_id = level5.manager_id
RIGHT JOIN employees AS level6 ON level5.employee_id = level6.manager_id

ORDER BY level1.last_name,level2.last_name,level3.last_name,level4.last_name,level5.last_name
