/*
Created: 08/05/2019
Modified: 21/10/2019
Project: A.I.stein
Model: PostgreSQL 10
Company: A.I.stein
Author: Gabriel Cruz
Version: 3.0
Database: PostgreSQL 10
*/


-- Drop relationships section -------------------------------------------------

ALTER TABLE Resposta DROP CONSTRAINT IF EXISTS Relationship23
;
ALTER TABLE Pergunta DROP CONSTRAINT IF EXISTS Relationship22
;
ALTER TABLE Questionario DROP CONSTRAINT IF EXISTS Relationship19
;
ALTER TABLE Jogo DROP CONSTRAINT IF EXISTS Relationship18
;
ALTER TABLE Jogo DROP CONSTRAINT IF EXISTS Relationship17
;
ALTER TABLE Conteudo DROP CONSTRAINT IF EXISTS Relationship16
;
ALTER TABLE Conteudo DROP CONSTRAINT IF EXISTS Relationship15
;
ALTER TABLE ImagemAnexaAConteudo DROP CONSTRAINT IF EXISTS Relationship14
;
ALTER TABLE ImagemAnexaAConteudo DROP CONSTRAINT IF EXISTS Relationship13
;
ALTER TABLE Usuario DROP CONSTRAINT IF EXISTS Relationship9
;
ALTER TABLE Professor DROP CONSTRAINT IF EXISTS Relationship8
;
ALTER TABLE Administrador DROP CONSTRAINT IF EXISTS Relationship7
;
ALTER TABLE Administrador DROP CONSTRAINT IF EXISTS Relationship6
;
ALTER TABLE Professor DROP CONSTRAINT IF EXISTS Relationship5
;
ALTER TABLE Aluno DROP CONSTRAINT IF EXISTS Relationship4
;
ALTER TABLE Usuario DROP CONSTRAINT IF EXISTS Relationship1
;




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE Resposta DROP CONSTRAINT IF EXISTS PK_Resposta
;
ALTER TABLE Pergunta DROP CONSTRAINT IF EXISTS PK_Pergunta
;
ALTER TABLE Questionario DROP CONSTRAINT IF EXISTS PK_Questionario
;
ALTER TABLE Jogo DROP CONSTRAINT IF EXISTS PK_Jogo
;
ALTER TABLE ImagemAnexaAConteudo DROP CONSTRAINT IF EXISTS PK_ImagemAnexaAConteudo
;
ALTER TABLE Conteudo DROP CONSTRAINT IF EXISTS PK_Conteudo
;
ALTER TABLE Administrador DROP CONSTRAINT IF EXISTS PK_Administrador
;
ALTER TABLE Professor DROP CONSTRAINT IF EXISTS PK_Professor
;
ALTER TABLE Aluno DROP CONSTRAINT IF EXISTS PK_Aluno
;
ALTER TABLE Materia DROP CONSTRAINT IF EXISTS PK_Materia
;
ALTER TABLE Imagem DROP CONSTRAINT IF EXISTS PK_Imagem
;
ALTER TABLE Genero DROP CONSTRAINT IF EXISTS PK_Genero
;
ALTER TABLE Usuario DROP CONSTRAINT IF EXISTS PK_Usuario
;


-- Drop indexes section -------------------------------------------------

DROP INDEX IF EXISTS IX_Relationship19
;
DROP INDEX IF EXISTS IX_Relationship17
;
DROP INDEX IF EXISTS IX_Relationship18
;
DROP INDEX IF EXISTS IX_Relationship15
;
DROP INDEX IF EXISTS IX_Relationship16
;
DROP INDEX IF EXISTS IX_Relationship7
;
DROP INDEX IF EXISTS IX_Relationship8
;
DROP INDEX IF EXISTS IX_Relationship1
;
DROP INDEX IF EXISTS IX_Relationship9
;


-- Drop tables section ---------------------------------------------------

DROP TABLE IF EXISTS Resposta
;
DROP TABLE IF EXISTS Pergunta
;
DROP TABLE IF EXISTS Questionario
;
DROP TABLE IF EXISTS Jogo
;
DROP TABLE IF EXISTS ImagemAnexaAConteudo
;
DROP TABLE IF EXISTS Conteudo
;
DROP TABLE IF EXISTS Administrador
;
DROP TABLE IF EXISTS Professor
;
DROP TABLE IF EXISTS Aluno
;
DROP TABLE IF EXISTS Usuario
;
DROP TABLE IF EXISTS Materia
;
DROP TABLE IF EXISTS Imagem
;
DROP TABLE IF EXISTS Genero
;

-- Drop schemas section --------------------------------------------------- 

DROP SCHEMA IF EXISTS Schema1
;

-- Create schemas section -------------------------------------------------

CREATE SCHEMA Schema1
;

-- Create tables section -------------------------------------------------

-- Table Genero

CREATE TABLE Genero(
 Codigo_Genero Integer NOT NULL,
 Nome_Genero Character varying(20) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Genero

ALTER TABLE Genero ADD CONSTRAINT PK_Genero PRIMARY KEY (Codigo_Genero)
;

-- Table Imagem

CREATE TABLE Imagem(
 Codigo_Imagem Integer NOT NULL,
 Caminho_Imagem Character varying NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Imagem

ALTER TABLE Imagem ADD CONSTRAINT PK_Imagem PRIMARY KEY (Codigo_Imagem)
;

-- Table Materia

CREATE TABLE Materia(
 Codigo_Materia Integer NOT NULL,
 Nome_Materia Character varying(30) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Materia

ALTER TABLE Materia ADD CONSTRAINT PK_Materia PRIMARY KEY (Codigo_Materia)
;

-- Table Usuario

CREATE TABLE Usuario(
 Username Character varying(20) NOT NULL,
 Nome Name NOT NULL,
 Senha Character varying(20) DEFAULT 64 NOT NULL,
 Email Character varying(40) NOT NULL,
 Data_Cadastro Date NOT NULL,
 Identificador_Tipo Character(1) NOT NULL,
 Foto Integer,
 Genero Integer,
 Data_Nascimento Date
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Usuario

CREATE INDEX IX_Relationship1 ON Usuario (Genero)
;

CREATE INDEX IX_Relationship9 ON Usuario (Foto)
;

-- Add keys for table Usuario

ALTER TABLE Usuario ADD CONSTRAINT PK_Usuario PRIMARY KEY (Username)
;

-- Table Aluno

CREATE TABLE Aluno(
 Username Character varying(20) NOT NULL,
 Escola Character varying(40) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Aluno

ALTER TABLE Aluno ADD CONSTRAINT PK_Aluno PRIMARY KEY (Username)
;

-- Table Professor

CREATE TABLE Professor(
 Username Character varying(20) NOT NULL,
 Escola Character varying(40) NOT NULL,
 Materia Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Professor

CREATE INDEX IX_Relationship8 ON Professor (Materia)
;

-- Add keys for table Professor

ALTER TABLE Professor ADD CONSTRAINT PK_Professor PRIMARY KEY (Username)
;

-- Table Administrador

CREATE TABLE Administrador(
 Username Character varying(20) NOT NULL,
 Escola Character varying(40) NOT NULL,
 Numero_Aprovacoes Integer NOT NULL,
 Dias_Como_Administrador Integer NOT NULL,
 Materia Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;
COMMENT ON COLUMN Administrador.Dias_Como_Administrador IS 'Fazer o calculo da quantidade de dias que o usuário virou administrador e a data atual'
;

-- Create indexes for table Administrador

CREATE INDEX IX_Relationship7 ON Administrador (Materia)
;

-- Add keys for table Administrador

ALTER TABLE Administrador ADD CONSTRAINT PK_Administrador PRIMARY KEY (Username)
;

-- Table Conteudo

CREATE TABLE Conteudo(
 Codigo_Conteudo Integer NOT NULL,
 Nome_Conteudo Character varying(30) NOT NULL,
 Texto_Conteudo Text NOT NULL,
 Status_Conteudo Character(1),
 Username Character varying(20),
 Materia Integer,
 Data_Publicacao Date,
 Resumo_Conteudo Text NOT NULL,
 Tipo_Conteudo Character(1) NOT NULL,
 Fonte_Conteudo Character varying
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Conteudo

CREATE INDEX IX_Relationship15 ON Conteudo (Username)
;

CREATE INDEX IX_Relationship16 ON Conteudo (Materia)
;

-- Add keys for table Conteudo

ALTER TABLE Conteudo ADD CONSTRAINT PK_Conteudo PRIMARY KEY (Codigo_Conteudo)
;

-- Table ImagemAnexaAConteudo

CREATE TABLE ImagemAnexaAConteudo(
 Codigo_Imagem Integer NOT NULL,
 Codigo_Conteudo Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table ImagemAnexaAConteudo

ALTER TABLE ImagemAnexaAConteudo ADD CONSTRAINT PK_ImagemAnexaAConteudo PRIMARY KEY (Codigo_Imagem,Codigo_Conteudo)
;

-- Table Jogo

CREATE TABLE Jogo(
 Codigo_Jogo Integer NOT NULL,
 Nome_Jogo Character varying NOT NULL,
 URL_Jogo Character varying NOT NULL,
 Creditos_Jogo Text NOT NULL,
 Codigo_Imagem Integer NOT NULL,
 Codigo_Materia Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Jogo

CREATE INDEX IX_Relationship17 ON Jogo (Codigo_Imagem)
;

CREATE INDEX IX_Relationship18 ON Jogo (Codigo_Materia)
;

-- Add keys for table Jogo

ALTER TABLE Jogo ADD CONSTRAINT PK_Jogo PRIMARY KEY (Codigo_Jogo)
;

-- Table Questionario

CREATE TABLE Questionario(
 Codigo_Questionario Integer NOT NULL,
 Codigo_Materia Integer
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Questionario

CREATE INDEX IX_Relationship19 ON Questionario (Codigo_Materia)
;

-- Add keys for table Questionario

ALTER TABLE Questionario ADD CONSTRAINT PK_Questionario PRIMARY KEY (Codigo_Questionario)
;

-- Table Pergunta

CREATE TABLE Pergunta(
 Codigo_Pergunta Integer NOT NULL,
 Descricao_Pergunta Text NOT NULL,
 Codigo_Questionario Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Pergunta

ALTER TABLE Pergunta ADD CONSTRAINT PK_Pergunta PRIMARY KEY (Codigo_Pergunta,Codigo_Questionario)
;

-- Table Resposta

CREATE TABLE Resposta(
 Codigo_Resposta Integer NOT NULL,
 Descricao_Resposta Character varying NOT NULL,
 Codigo_Pergunta Integer NOT NULL,
 Codigo_Questionario Integer NOT NULL,
 Resposta_Correta Boolean NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Resposta

ALTER TABLE Resposta ADD CONSTRAINT PK_Resposta PRIMARY KEY (Codigo_Resposta,Codigo_Pergunta,Codigo_Questionario)
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Usuario ADD CONSTRAINT Relationship1 FOREIGN KEY (Genero) REFERENCES Genero (Codigo_Genero) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Aluno ADD CONSTRAINT Relationship4 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Professor ADD CONSTRAINT Relationship5 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Administrador ADD CONSTRAINT Relationship6 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Administrador ADD CONSTRAINT Relationship7 FOREIGN KEY (Materia) REFERENCES Materia (Codigo_Materia) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Professor ADD CONSTRAINT Relationship8 FOREIGN KEY (Materia) REFERENCES Materia (Codigo_Materia) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Usuario ADD CONSTRAINT Relationship9 FOREIGN KEY (Foto) REFERENCES Imagem (Codigo_Imagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE ImagemAnexaAConteudo ADD CONSTRAINT Relationship13 FOREIGN KEY (Codigo_Imagem) REFERENCES Imagem (Codigo_Imagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE ImagemAnexaAConteudo ADD CONSTRAINT Relationship14 FOREIGN KEY (Codigo_Conteudo) REFERENCES Conteudo (Codigo_Conteudo) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Conteudo ADD CONSTRAINT Relationship15 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Conteudo ADD CONSTRAINT Relationship16 FOREIGN KEY (Materia) REFERENCES Materia (Codigo_Materia) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Jogo ADD CONSTRAINT Relationship17 FOREIGN KEY (Codigo_Imagem) REFERENCES Imagem (Codigo_Imagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Jogo ADD CONSTRAINT Relationship18 FOREIGN KEY (Codigo_Materia) REFERENCES Materia (Codigo_Materia) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Questionario ADD CONSTRAINT Relationship19 FOREIGN KEY (Codigo_Materia) REFERENCES Materia (Codigo_Materia) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Pergunta ADD CONSTRAINT Relationship22 FOREIGN KEY (Codigo_Questionario) REFERENCES Questionario (Codigo_Questionario) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Resposta ADD CONSTRAINT Relationship23 FOREIGN KEY (Codigo_Pergunta, Codigo_Questionario) REFERENCES Pergunta (Codigo_Pergunta, Codigo_Questionario) ON DELETE NO ACTION ON UPDATE NO ACTION
;




