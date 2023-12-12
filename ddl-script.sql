CREATE TABLE Wycieczki
(
    kraj VARCHAR(10),
    cena MONEY
);

INSERT INTO 
    Wycieczki 
VALUES
    ('Ateny', 1000),
    ('Bangkok', 3000);

CREATE TABLE Bilety
(
    idBiletu int,
    kraj VARCHAR(10),
    l_osób int,
    cena MONEY
);

INSERT INTO 
    Bilety 
VALUES
    (1, 'Ateny', 1, 1000);