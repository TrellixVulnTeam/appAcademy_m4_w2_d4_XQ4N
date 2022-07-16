SELECT count(*) as number_of_cats
FROM cats;

SELECT min(birth_year) as youngest_cat,
max(birth_year) as oldest_cat
FROM cats
ORDER BY birth_year;

SELECT cats.name, (
    SELECT COUNT(toys.name) FROM toys
    WHERE cats.id =  toys.cat_id
) AS number_of_toys FROM cats
JOIN toys ON toys.cat_id = cats.id
GROUP BY cats.name;

SELECT cats.name, (
    SELECT COUNT(toys.name) FROM toys
    WHERE cats.id =  toys.cat_id
) AS number_of_toys FROM cats
JOIN toys ON toys.cat_id = cats.id
GROUP BY cats.name
HAVING number_of_toys >= 2;
