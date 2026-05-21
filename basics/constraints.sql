-- Topic: Constraints (NOT NULL, UNIQUE, CHECK, DEFAULT, PRIMARY KEY)
-- Date: May 2026

CREATE TABLE admission_info(
    user_id  INT PRIMARY KEY,
    name     VARCHAR(50),
    gmail    VARCHAR(100) UNIQUE,          -- duplicate email চলবে না
    age      INT CHECK (age >= 18),        -- ১৮ বছরের কম হলে error
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- auto timestamp
);

INSERT INTO admission_info (user_id, name, gmail, age)
VALUES
    (1, 'Mehedi', 'mehedimon75@gmail.com',23),
    (2, 'Shihab',  'shihab@gmail.com',24),
    (3, 'Saimoon', 'smcg@gmail.com',25);

-- Note: age=16 দিলে CHECK constraint fail হবে → error আসবে
-- Note: same gmail দুইবার দিলে UNIQUE constraint fail → error
-- Note: reg_date manually না দিলে auto current time বসে যাবে
