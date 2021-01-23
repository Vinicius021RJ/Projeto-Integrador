-- Em modo de desenvolvimento
DROP DATABASE IF EXISTS ccomum;
CREATE DATABASE ccomum CHARACTER SET utf8 COLLATE utf8_general_ci;
USE ccomum;

CREATE TABLE articles (
    art_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image VARCHAR(255) NOT NULL,
    title VARCHAR(127) NOT NULL,
    preview VARCHAR(255) NOT NULL,
    content LONGTEXT NOT NULL,
    author INT NOT NULL,
    status ENUM ('ativo', 'inativo') DEFAULT 'ativo'
);

CREATE TABLE authors (
    aut_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    aut_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    aut_avatar VARCHAR(255) NOT NULL,
    aut_name VARCHAR(127) NOT NULL,
    aut_link VARCHAR(255) NOT NULL,
    status ENUM ('ativo', 'inativo') DEFAULT 'ativo'
);

CREATE TABLE contacts (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    status ENUM ('Não lida','lida','respondida','apagada') DEFAULT 'Não lida'
);

CREATE TABLE config (
    cfg_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    variable VARCHAR(63) NOT NULL,
    value TEXT NOT NULL
);

-- Insere dados nas tabelas

INSERT INTO config (variable, value) VALUES 
('siteName', 'Catodo Comum'),
('siteSlogan', 'Com os pés no chão'),
('pageTitle', ''),
('siteLogo', '/img/logo02.png');

INSERT INTO authors (aut_avatar, aut_name, aut_link) VALUES
('https://randomuser.me/api/portraits/lego/5.jpg', 'André Luferat', 'http://luferat.net/'),
('https://randomuser.me/api/portraits/lego/7.jpg', 'Joca da Silva', 'http://catcocomum.tk/'),
('https://randomuser.me/api/portraits/women/56.jpg', 'Setembrina Trocatapas', 'http://catcocomum.tk/');

INSERT INTO articles (image, title, preview, content, author) VALUES
(
    'https://picsum.photos/200',
    'Primeiro Artigo',
    'Este é nosso primeiro artigo do site....',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi hic, error tenetur obcaecati sapiente earum ab rem quod magnam, voluptatum laudantium praesentium! Repudiandae nostrum ad obcaecati dolores nulla delectus nemo!</p><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ea veniam odit consectetur nulla nisi quisquam blanditiis quis expedita, a quod deserunt ullam eligendi illo similique aliquid provident, ipsum dicta ipsam?</p><p><img src="https://picsum.photos/400/300" alt="Imagem aleatória"></p><p><a href="http://luferat.net/">Site do fessô</a></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos harum, laudantium nesciunt id explicabo quia. Quidem non obcaecati placeat necessitatibus tempora. Autem quam earum labore provident, minus omnis perferendis dolorem!</p>',
    '1'
),
(
    'https://picsum.photos/201',
    'Reunião Geral de Páscoa',
    'Assista à gravação da nossa primeira reunão empresarial do segundo semestre.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi hic, error tenetur obcaecati sapiente earum ab rem quod magnam, voluptatum laudantium praesentium! Repudiandae nostrum ad obcaecati dolores nulla delectus nemo!</p><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ea veniam odit consectetur nulla nisi quisquam blanditiis quis expedita, a quod deserunt ullam eligendi illo similique aliquid provident, ipsum dicta ipsam?</p><p><img src="https://picsum.photos/400/300" alt="Imagem aleatória"></p><p><a href="http://luferat.net/">Site do fessô</a></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos harum, laudantium nesciunt id explicabo quia. Quidem non obcaecati placeat necessitatibus tempora. Autem quam earum labore provident, minus omnis perferendis dolorem!</p>',
    '3'
),
(
    'https://picsum.photos/199',
    'Como usar a máscara de forma correta',
    'Veja as formas corretas de usar, manipular, descartar e reciclar suas máscaras.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi hic, error tenetur obcaecati sapiente earum ab rem quod magnam, voluptatum laudantium praesentium! Repudiandae nostrum ad obcaecati dolores nulla delectus nemo!</p><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ea veniam odit consectetur nulla nisi quisquam blanditiis quis expedita, a quod deserunt ullam eligendi illo similique aliquid provident, ipsum dicta ipsam?</p><p><img src="https://picsum.photos/400/300" alt="Imagem aleatória"></p><p><a href="http://luferat.net/">Site do fessô</a></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos harum, laudantium nesciunt id explicabo quia. Quidem non obcaecati placeat necessitatibus tempora. Autem quam earum labore provident, minus omnis perferendis dolorem!</p>',
    '2'
);