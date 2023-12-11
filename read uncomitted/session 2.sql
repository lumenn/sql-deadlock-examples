SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRANSACTION
    UPDATE Bilety
        SET cena = 1
    WHERE
        kraj = 'Ateny'
-- STEP 2 - RUN ABOVE 

    UPDATE Wycieczki
        SET cena = 1
    WHERE
        kraj = 'Bangkok'
-- STEP 4 RUN BETWEEN 2 AND 4

COMMIT TRANSACTION 
