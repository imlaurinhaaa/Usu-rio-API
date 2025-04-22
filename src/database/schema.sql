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

INSERT INTO users (name, email, age, photo) VALUES
('João Silva', 'joao.silva@gmail.com', 25, 'https://example.com/photos/joao_silva.jpg'),
('Maria Oliveira', 'maria.oliveira@gmail.com', 30, 'https://example.com/photos/maria_oliveira.jpg'),
('Carlos Souza', 'carlos.souza@gmail.com', 28, 'https://example.com/photos/carlos_souza.jpg'),
('Ana Paula', 'ana.paula@gmail.com', 22, 'https://example.com/photos/ana_paula.jpg'),
('Pedro Santos', 'pedro.santos@gmail.com', 35, 'https://example.com/photos/pedro_santos.jpg'),
('Juliana Costa', 'juliana.costa@gmail.com', 27, 'https://example.com/photos/juliana_costa.jpg'),
('Rafael Almeida', 'rafael.almeida@gmail.com', 32, 'https://example.com/photos/rafael_almeida.jpg'),
('Fernanda Lima', 'fernanda.lima@gmail.com', 29, 'https://example.com/photos/fernanda_lima.jpg'),
('Lucas Pereira', 'lucas.pereira@gmail.com', 24, 'https://example.com/photos/lucas_pereira.jpg'),
('Camila Rocha', 'camila.rocha@gmail.com', 26, 'https://example.com/photos/camila_rocha.jpg'),
('Gabriel Martins', 'gabriel.martins@gmail.com', 31, 'https://example.com/photos/gabriel_martins.jpg'),
('Isabela Ferreira', 'isabela.ferreira@gmail.com', 23, 'https://example.com/photos/isabela_ferreira.jpg'),
('Ricardo Mendes', 'ricardo.mendes@gmail.com', 34, 'https://example.com/photos/ricardo_mendes.jpg'),
('Patrícia Nunes', 'patricia.nunes@gmail.com', 28, 'https://example.com/photos/patricia_nunes.jpg'),
('André Barbosa', 'andre.barbosa@gmail.com', 33, 'https://example.com/photos/andre_barbosa.jpg'),
('Larissa Ribeiro', 'larissa.ribeiro@gmail.com', 21, 'https://example.com/photos/larissa_ribeiro.jpg'),
('Thiago Monteiro', 'thiago.monteiro@gmail.com', 29, 'https://example.com/photos/thiago_monteiro.jpg'),
('Vanessa Cardoso', 'vanessa.cardoso@gmail.com', 25, 'https://example.com/photos/vanessa_cardoso.jpg'),
('Felipe Azevedo', 'felipe.azevedo@gmail.com', 30, 'https://example.com/photos/felipe_azevedo.jpg'),
('Renata Teixeira', 'renata.teixeira@gmail.com', 27, 'https://example.com/photos/renata_teixeira.jpg'),
('Bruno Carvalho', 'bruno.carvalho@gmail.com', 26, 'https://example.com/photos/bruno_carvalho.jpg'),
('Carolina Batista', 'carolina.batista@gmail.com', 24, 'https://example.com/photos/carolina_batista.jpg'),
('Eduardo Gomes', 'eduardo.gomes@gmail.com', 32, 'https://example.com/photos/eduardo_gomes.jpg'),
('Mariana Duarte', 'mariana.duarte@gmail.com', 28, 'https://example.com/photos/mariana_duarte.jpg'),
('Alexandre Farias', 'alexandre.farias@gmail.com', 31, 'https://example.com/photos/alexandre_farias.jpg'),
('Beatriz Silva', 'beatriz.silva@gmail.com', 22, 'https://example.com/photos/beatriz_silva.jpg'),
('Rodrigo Correia', 'rodrigo.correia@gmail.com', 35, 'https://example.com/photos/rodrigo_correia.jpg'),
('Tatiana Moraes', 'tatiana.moraes@gmail.com', 29, 'https://example.com/photos/tatiana_moraes.jpg'),
('Diego Cunha', 'diego.cunha@gmail.com', 33, 'https://example.com/photos/diego_cunha.jpg'),
('Paula Antunes', 'paula.antunes@gmail.com', 23, 'https://example.com/photos/paula_antunes.jpg'),
('Marcelo Vieira', 'marcelo.vieira@gmail.com', 34, 'https://example.com/photos/marcelo_vieira.jpg'),
('Aline Castro', 'aline.castro@gmail.com', 25, 'https://example.com/photos/aline_castro.jpg'),
('Gustavo Freitas', 'gustavo.freitas@gmail.com', 30, 'https://example.com/photos/gustavo_freitas.jpg'),
('Natália Mendes', 'natalia.mendes@gmail.com', 27, 'https://example.com/photos/natalia_mendes.jpg'),
('Leandro Silva', 'leandro.silva@gmail.com', 28, 'https://example.com/photos/leandro_silva.jpg'),
('Sabrina Almeida', 'sabrina.almeida@gmail.com', 24, 'https://example.com/photos/sabrina_almeida.jpg'),
('Fernando Rocha', 'fernando.rocha@gmail.com', 31, 'https://example.com/photos/fernando_rocha.jpg'),
('Cláudia Martins', 'claudia.martins@gmail.com', 26, 'https://example.com/photos/claudia_martins.jpg'),
('Vinícius Ribeiro', 'vinicius.ribeiro@gmail.com', 32, 'https://example.com/photos/vinicius_ribeiro.jpg'),
('Débora Nunes', 'debora.nunes@gmail.com', 29, 'https://example.com/photos/debora_nunes.jpg'),
('Rogério Costa', 'rogerio.costa@gmail.com', 33, 'https://example.com/photos/rogerio_costa.jpg'),
('Elaine Santos', 'elaine.santos@gmail.com', 22, 'https://example.com/photos/elaine_santos.jpg'),
('Fábio Oliveira', 'fabio.oliveira@gmail.com', 35, 'https://example.com/photos/fabio_oliveira.jpg'),
('Priscila Souza', 'priscila.souza@gmail.com', 28, 'https://example.com/photos/priscila_souza.jpg'),
('Otávio Lima', 'otavio.lima@gmail.com', 30, 'https://example.com/photos/otavio_lima.jpg'),
('Michele Pereira', 'michele.pereira@gmail.com', 27, 'https://example.com/photos/michele_pereira.jpg'),
('César Monteiro', 'cesar.monteiro@gmail.com', 34, 'https://example.com/photos/cesar_monteiro.jpg'),
('Viviane Cardoso', 'viviane.cardoso@gmail.com', 25, 'https://example.com/photos/viviane_cardoso.jpg'),
('Henrique Azevedo', 'henrique.azevedo@gmail.com', 31, 'https://example.com/photos/henrique_azevedo.jpg'),
('Letícia Teixeira', 'leticia.teixeira@gmail.com', 23, 'https://example.com/photos/leticia_teixeira.jpg');