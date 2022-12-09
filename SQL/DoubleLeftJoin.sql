SELECT
    r.region_name,
    c.country_name,
    l.street_address,
    l.city
FROM
    regions r
LEFT JOIN countries c ON
    c.region_id = r.region_id
LEFT JOIN locations l ON
    l.country_id = c.country_id
WHERE
    c.country_id IN('US', 'UK', 'CN');
