CREATE DATABASE usuarios;

\c usuarios;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INTEGER NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    image TEXT NOT NULL,
    description TEXT NOT NULL,
    add_person VARCHAR(255),
    localization VARCHAR(255)
);

INSERT INTO users (name, email, age) VALUES 
('Laura Violla', 'laura.violla@gmail.com', 17),
('Evelyn Oliveira', 'evelyn.oliveira@gmail.com', 17),
('Ana Carolina Freitas', 'anacarolina.freitas@gmail.com', 16);

INSERT INTO posts (user_id, image, description, add_person, localization) VALUES
(1, 'https://i.pinimg.com/736x/a3/10/d2/a310d240041f7576a80490ac7f69ad38.jpg', 'Just a little bit makeup', '@rarebeauty', 'Valinhos-SP'),
(2, 'https://i.pinimg.com/736x/7f/37/80/7f37806e7d67deca73fb2056b3969a4d.jpg', 'You are my Soulmate', '@mateussilva', 'Valinhos-SP'),
(3, 'https://i.pinimg.com/736x/23/2e/9a/232e9a1d65d6afa6e3fb6dbb203680bd.jpg', 'Formula 1, Go Ferrari', '@ferrari', 'Monaco-IT');


ALTER TABLE users ADD COLUMN photo TEXT;