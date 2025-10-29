CREATE DATABASE bibliotecamaisa;

\c bibliotecamaisa;

-- CREATE TABLE usuarios (
--     id SERIAL PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     senha VARCHAR(100) NOT NULL,
--     criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
-- );

-- CREATE TABLE livros (
--     id SERIAL PRIMARY KEY,
--     titulo VARCHAR (100) NOT NULL,
--     autor VARCHAR (100) NOT NULL,
--     isbn VARCHAR (20) UNIQUE NOT NULL,
--     ano_publicacao INT,
--     disponivel BOOLEAN DEFAULT TRUE
-- );

CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    livro_id INT REFERENCES livros(id),
    data_emprestimo DATE DEFAULT CURRENT_DATE,
    data_devolucao DATE
);