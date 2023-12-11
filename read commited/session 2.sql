SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION
    UPDATE Bilety
        SET cena = cena * 2
    WHERE
        kraj = 'Ateny'
-- STEP 2 - RUN ABOVE

    SELECT
        *
    FROM
        Wycieczki 
    WHERE
        kraj = 'Bangkok'
-- STEP 4 RUN BETWEEN 2 AND 4

COMMIT TRANSACTION 
