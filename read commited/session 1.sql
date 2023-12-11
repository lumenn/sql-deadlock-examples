SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION
    UPDATE Wycieczki
        SET cena = cena*2
    WHERE
        kraj = 'Bangkok'
-- STEP 1 RUN ABOVE

    SELECT
        *
    FROM
        Bilety
    WHERE
        kraj = 'Ateny'
-- STEP 3 RUN BETWEEN 1 AND 3

COMMIT TRANSACTION 
