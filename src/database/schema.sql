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
    image VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    add_person VARCHAR(255),
    localization VARCHAR(255)
);

INSERT INTO users (name, email, age) VALUES 
('Laura Violla', 'laura.violla@gmail.com', 17),
('Evelyn Oliveira', 'evelyn.oliveira@gmail.com', 17),
('Ana Carolina Freitas', 'anacarolina.freitas@gmail.com', 16);

INSERT INTO posts (user_id, image, description, add_person, localization) VALUES
(1, 'https://i.pinimg.com/736x/a3/10/d2/a310d240041f7576a80490ac7f69ad38.jpg', 'Makeup', '@rarebeauty', 'Valinhos-SP'),
(2, 'https://i.pinimg.com/736x/7f/37/80/7f37806e7d67deca73fb2056b3969a4d.jpg', 'Boyfriend', '@mateussilva', 'Valinhos-SP'),
(3, 'https://i.pinimg.com/736x/23/2e/9a/232e9a1d65d6afa6e3fb6dbb203680bd.jpg', 'Formula 1', '@ferrari', 'Monaco-IT');

INSERT INTO posts (user_id, image, description, add_person, localization) VALUES
(1, 'https://i.pinimg.com/736x/12/34/56/1234567890abcdef.jpg', 'Beach Vacation', '@travelblog', 'Rio de Janeiro-BR'),
(2, 'https://i.pinimg.com/736x/98/76/54/9876543210fedcba.jpg', 'Mountain Hiking', '@naturelover', 'Rio de Janeiro-BR'),
(3, 'https://i.pinimg.com/736x/ab/cd/ef/abcdef1234567890.jpg', 'City Lights', '@urbanexplorer', 'New York-US'),
(1, 'https://i.pinimg.com/736x/11/22/33/1122334455667788.jpg', 'Broadway Show', '@theaterfan', 'New York-US'),
(2, 'https://i.pinimg.com/736x/44/55/66/445566778899aabb.jpg', 'Desert Safari', '@adventuretime', 'Dubai-AE'),
(3, 'https://i.pinimg.com/736x/77/88/99/778899aabbccddeeff.jpg', 'Luxury Hotel', '@luxurylife', 'Dubai-AE'),
(1, 'https://i.pinimg.com/736x/aa/bb/cc/aabbccddeeff1122.jpg', 'Cherry Blossoms', '@springvibes', 'Tokyo-JP'),
(2, 'https://i.pinimg.com/736x/dd/ee/ff/ddeeff1122334455.jpg', 'Sushi Dinner', '@foodie', 'Tokyo-JP');