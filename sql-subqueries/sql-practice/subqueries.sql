SELECT cats.name, toys.name
FROM cats
JOIN toys ON toys.cat_id = cats.id
WHERE cats.name = 'Garfield';

SELECT cats.name, (
    SELECT toys.name
    FROM toys
    WHERE toys.cat_id = 7
)
FROM cats
WHERE id IN (
    SELECT toys.cat_id
    FROM toys
    WHERE toys.cat_id = 7
);
