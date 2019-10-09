/*
Created: 08/05/2019
Modified: 09/10/2019
Project: A.I.stein
Model: PostgreSQL 10
Company: A.I.stein
Author: Gabriel Cruz
Version: 2.0
Database: PostgreSQL 10
*/

-- Create tables section -------------------------------------------------

-- Table Usuario

CREATE TABLE Usuario(
 Username Character varying(20) NOT NULL,
 Nome Name NOT NULL,
 Senha Character varying(20) DEFAULT 64 NOT NULL,
 Email Character varying(40) NOT NULL,
 DataCadastro Date DEFAULT DataCadastro = <%CurDate()%> NOT NULL,
 IdentificadorTipo Character(1) NOT NULL,
 Foto Integer,
 Genero Integer,
 DataNascimento Date
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

-- Table Genero

CREATE TABLE Genero(
 CodigoGenero Serial NOT NULL,
 NomeGenero Character varying(20) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Genero

ALTER TABLE Genero ADD CONSTRAINT PK_Genero PRIMARY KEY (CodigoGenero)
;

-- Table Imagem

CREATE TABLE Imagem(
 CodigoImagem Serial NOT NULL,
 CaminhoImagem Character varying NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Imagem

ALTER TABLE Imagem ADD CONSTRAINT PK_Imagem PRIMARY KEY (CodigoImagem)
;

-- Table Materia

CREATE TABLE Materia(
 CodigoMateria Serial NOT NULL,
 NomeMateria Character varying(30) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Materia

ALTER TABLE Materia ADD CONSTRAINT PK_Materia PRIMARY KEY (CodigoMateria)
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
 AreaDeConhecimento Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Professor

CREATE INDEX IX_Relationship8 ON Professor (AreaDeConhecimento)
;

-- Add keys for table Professor

ALTER TABLE Professor ADD CONSTRAINT PK_Professor PRIMARY KEY (Username)
;

-- Table Administrador

CREATE TABLE Administrador(
 Username Character varying(20) NOT NULL,
 Escola Character varying(40) NOT NULL,
 NumeroAprovacoes Integer NOT NULL,
 TempoComoAdministrador Time NOT NULL,
 AreaDeConhecimento Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Administrador

CREATE INDEX IX_Relationship7 ON Administrador (AreaDeConhecimento)
;

-- Add keys for table Administrador

ALTER TABLE Administrador ADD CONSTRAINT PK_Administrador PRIMARY KEY (Username)
;

-- Table Conteudo

CREATE TABLE Conteudo(
 CodigoConteudo Serial NOT NULL,
 NomeConteudo Character varying(30) NOT NULL,
 TextoConteudo Text NOT NULL,
 StatusConteudo Character(1) NOT NULL,
 Username Character varying(20),
 Materia Integer,
 DataPublicacao Date,
 ResumoConteudo Text NOT NULL,
 TipoConteudo Character(1) NOT NULL,
 FonteConteudo Character varying
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

ALTER TABLE Conteudo ADD CONSTRAINT PK_Conteudo PRIMARY KEY (CodigoConteudo)
;

-- Table ImagemAnexaAPublicacao

CREATE TABLE ImagemAnexaAPublicacao(
 CodigoImagem Integer NOT NULL,
 CodigoPublicacao Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table ImagemAnexaAPublicacao

ALTER TABLE ImagemAnexaAPublicacao ADD CONSTRAINT PK_ImagemAnexaAPublicacao PRIMARY KEY (CodigoImagem,CodigoPublicacao)
;

-- Table Jogo

CREATE TABLE Jogo(
 "CodigoJogo" Serial NOT NULL,
 "NomeJogo" Character varying NOT NULL,
 "URLJogo" Character varying NOT NULL,
 "CreditosJogo" Text NOT NULL,
 "CodigoImagem" Integer NOT NULL,
 "CodigoMateria" Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Jogo

CREATE INDEX IX_Relationship17 ON Jogo (CodigoImagem)
;

CREATE INDEX IX_Relationship18 ON Jogo (CodigoMateria)
;

-- Add keys for table Jogo

ALTER TABLE Jogo ADD CONSTRAINT PK_Jogo PRIMARY KEY (CodigoJogo)
;

-- Table Questionario

CREATE TABLE Questionario(
 CodigoQuestionario Serial NOT NULL,
 CodigoMateria Integer,
 CodigoPergunta Integer NOT NULL,
 CodigoResposta Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Questionario

CREATE INDEX IX_Relationship19 ON Questionario (CodigoMateria)
;

-- Add keys for table Questionario

ALTER TABLE Questionario ADD CONSTRAINT PK_Questionario PRIMARY KEY (CodigoQuestionario,CodigoPergunta,CodigoResposta)
;

-- Table Pergunta

CREATE TABLE Pergunta(
 CodigoPergunta Serial NOT NULL,
 DescricaoPergunta Text NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Pergunta

ALTER TABLE Pergunta ADD CONSTRAINT PK_Pergunta PRIMARY KEY (CodigoPergunta)
;

-- Table Resposta

CREATE TABLE Resposta(
 CodigoResposta Serial NOT NULL,
 DescricaoResposta Character varying NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Resposta

ALTER TABLE Resposta ADD CONSTRAINT PK_Resposta PRIMARY KEY (CodigoResposta)
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Usuario ADD CONSTRAINT Relationship1 FOREIGN KEY (Genero) REFERENCES Genero (CodigoGenero) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Aluno ADD CONSTRAINT Relationship4 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Professor ADD CONSTRAINT Relationship5 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Administrador ADD CONSTRAINT Relationship6 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Administrador ADD CONSTRAINT Relationship7 FOREIGN KEY (AreaDeConhecimento) REFERENCES Materia (CodigoMateria) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Professor ADD CONSTRAINT Relationship8 FOREIGN KEY (AreaDeConhecimento) REFERENCES Materia (CodigoMateria) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Usuario ADD CONSTRAINT Relationship9 FOREIGN KEY (Foto) REFERENCES Imagem (CodigoImagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE ImagemAnexaAPublicacao ADD CONSTRAINT Relationship13 FOREIGN KEY (CodigoImagem) REFERENCES Imagem (CodigoImagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE ImagemAnexaAPublicacao ADD CONSTRAINT Relationship14 FOREIGN KEY (CodigoPublicacao) REFERENCES Conteudo (CodigoConteudo) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Conteudo ADD CONSTRAINT Relationship15 FOREIGN KEY (Username) REFERENCES Usuario (Username) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Conteudo ADD CONSTRAINT Relationship16 FOREIGN KEY (Materia) REFERENCES Materia (CodigoMateria) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Jogo ADD CONSTRAINT Relationship17 FOREIGN KEY (CodigoImagem) REFERENCES Imagem (CodigoImagem) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Jogo ADD CONSTRAINT Relationship18 FOREIGN KEY (CodigoMateria) REFERENCES Materia (CodigoMateria) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Questionario ADD CONSTRAINT Relationship19 FOREIGN KEY (CodigoMateria) REFERENCES Materia (CodigoMateria) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Questionario ADD CONSTRAINT Relationship20 FOREIGN KEY (CodigoPergunta) REFERENCES Pergunta (CodigoPergunta) ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE Questionario ADD CONSTRAINT Relationship21 FOREIGN KEY (CodigoResposta) REFERENCES Resposta (CodigoResposta) ON DELETE NO ACTION ON UPDATE NO ACTION
;




