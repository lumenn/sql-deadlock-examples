# Purpose
This repostiory contains examples which might be used to show/explain why and when deadlocks happen in MSSQL.

# How to
1. Open two different SQL sessions.
2. In each session open one file.
3. Run SQL commands according to comments.

For example - running Read Commited should look like:

### Session 1
```sql
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION
    UPDATE Wycieczki
        SET cena = cena*2
    WHERE
        kraj = 'Bangkok'
-- STEP 1 RUN ABOVE
```


### Session 2
```sql
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION
    UPDATE Bilety
        SET cena = cena * 2
    WHERE
        kraj = 'Ateny'
-- STEP 2 - RUN ABOVE
```

### Session 1
```sql
    SELECT
        *
    FROM
        Bilety
    WHERE
        kraj = 'Ateny'
-- STEP 3 RUN BETWEEN 1 AND 3
COMMIT TRANSACTION -- COMMIT AFTER DEADLOCK HAPPENS
```

### Session 2
```sql
    SELECT
        *
    FROM
        Wycieczki 
    WHERE
        kraj = 'Bangkok'
-- STEP 4 RUN BETWEEN 2 AND 4
COMMIT TRANSACTION -- COMMIT AFTER DEADLOCK HAPPENS
```