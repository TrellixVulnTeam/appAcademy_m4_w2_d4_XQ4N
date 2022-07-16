SELECT count(*) as number_of_cats
FROM cats;

SELECT min(birth_year) as youngest_cat,
max(birth_year) as oldest_cat
FROM cats
ORDER BY birth_year;
