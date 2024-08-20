-- 1. employee Tablosunu Olu�turma
CREATE TABLE employee (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. Mockaroo Kullanarak Veri Ekleme
-- �rnek veri ekleme, Mockaroo'dan elde edilen 50 veri ile de�i�tirilmelidir.
INSERT INTO employee (name, birthday, email)
VALUES 
    ('John Doe', '1985-01-15', 'john.doe@example.com'),
    ('Jane Smith', '1990-05-20', 'jane.smith@example.com'),
    -- (49 adet daha veri ekleyin)
    ('Emily Davis', '1992-12-01', 'emily.davis@example.com');

-- 3. UPDATE ��lemleri

-- id s�tununa g�re g�ncelleme
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;

-- name s�tununa g�re g�ncelleme
UPDATE employee
SET email = 'new.email@example.com'
WHERE name = 'John Doe';

-- birthday s�tununa g�re g�ncelleme
UPDATE employee
SET email = 'another.email@example.com'
WHERE birthday = '1990-05-20';

-- email s�tununa g�re g�ncelleme
UPDATE employee
SET name = 'Updated Name Again'
WHERE email = 'john.doe@example.com';

-- Belirli bir id ve name kombinasyonuna g�re g�ncelleme
UPDATE employee
SET birthday = '1986-07-10'
WHERE id = 2 AND name = 'Jane Smith';

-- 4. DELETE ��lemleri

-- id s�tununa g�re silme
DELETE FROM employee
WHERE id = 1;

-- name s�tununa g�re silme
DELETE FROM employee
WHERE name = 'Updated Name';

-- birthday s�tununa g�re silme
DELETE FROM employee
WHERE birthday = '1990-05-20';

-- email s�tununa g�re silme
DELETE FROM employee
WHERE email = 'another.email@example.com';

-- Belirli bir id ve name kombinasyonuna g�re silme
DELETE FROM employee
WHERE id = 2 AND name = 'Jane Smith';
