SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRANSACTION
    UPDATE Wycieczki
        SET cena = 2
    WHERE
        kraj = 'Bangkok'
-- STEP 1 RUN ABOVE

    UPDATE Bilety
        SET cena = 2
    WHERE
        kraj = 'Ateny'
-- STEP 3 RUN BETWEEN 1 AND 3

COMMIT TRANSACTION 
