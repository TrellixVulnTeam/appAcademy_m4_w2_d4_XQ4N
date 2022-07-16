-- SELECT cats.name, toys.name
-- FROM cats
-- JOIN toys ON toys.cat_id = cats.id
-- WHERE cats.name = 'Garfield';

-- SELECT cats.name, (
--     SELECT toys.name
--     FROM toys
--     WHERE toys.cat_id = 7
-- )
-- FROM cats
-- WHERE id IN (
--     SELECT toys.cat_id
--     FROM toys
--     WHERE toys.cat_id = 7
-- );

INSERT INTO toys (cat_id, name)
VALUES
    ((SELECT cats.id FROM cats
    WHERE cats.name = 'Garfield'), 'Pepperoni');

-- SELECT * FROM toys;

INSERT INTO toys (name, cat_id)
    SELECT 'Cat Bed', id
    FROM cats
    WHERE cats.birth_year < 2013;

        
-- SELECT * FROM toys;

INSERT INTO cats_backup
SELECT * FROM cats;

SELECT * FROM cats_backup;

INSERT INTO toys_backup
SELECT * FROM toys;

SELECT * FROM toys_backup;