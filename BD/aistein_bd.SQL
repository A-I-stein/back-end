/*
Created: 08/05/2019
Modified: 08/05/2019
Model: PostgreSQL 10
Database: PostgreSQL 10
*/


-- Create schemas section -------------------------------------------------

CREATE SCHEMA "Schema1"
;

-- Create tables section -------------------------------------------------

-- Table Usuario

CREATE TABLE "Usuario"(
 "Username" Character varying(20) NOT NULL,
 "Nome" Name NOT NULL,
 "Senha" Character varying(20) DEFAULT 64 NOT NULL,
 "Email" Character varying(40) NOT NULL,
 "DataCadastro" Date DEFAULT DataAtual = <%CurDate()%> NOT NULL,
 "IdentificadorTipo" Character(1) NOT NULL,
 "Foto" Integer,
 "Genero" Integer,
 "DataNascimento" Date
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Usuario

CREATE INDEX "IX_Relationship1" ON "Usuario" ("Genero")
;

CREATE INDEX "IX_Relationship9" ON "Usuario" ("Foto")
;

-- Add keys for table Usuario

ALTER TABLE "Usuario" ADD CONSTRAINT "PK_Usuario" PRIMARY KEY ("Username")
;

-- Table Genero

CREATE TABLE "Genero"(
 "CodigoGenero" Serial NOT NULL,
 "NomeGenero" Character varying(20) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Genero

ALTER TABLE "Genero" ADD CONSTRAINT "PK_Genero" PRIMARY KEY ("CodigoGenero")
;

-- Table Imagem

CREATE TABLE "Imagem"(
 "CodigoImagem" Serial NOT NULL,
 "ConteudoImagem" Bytea NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Imagem

ALTER TABLE "Imagem" ADD CONSTRAINT "PK_Imagem" PRIMARY KEY ("CodigoImagem")
;

-- Table AreaDeConhecimento

CREATE TABLE "AreaDeConhecimento"(
 "CodigoAreaDeConhecimento" Serial NOT NULL,
 "NomeAreaDeConhecimento" Character varying(30) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table AreaDeConhecimento

ALTER TABLE "AreaDeConhecimento" ADD CONSTRAINT "PK_AreaDeConhecimento" PRIMARY KEY ("CodigoAreaDeConhecimento")
;

-- Table Aluno

CREATE TABLE "Aluno"(
 "Username" Character varying(20) NOT NULL,
 "Escola" Character varying(40) NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Aluno

ALTER TABLE "Aluno" ADD CONSTRAINT "PK_Aluno" PRIMARY KEY ("Username")
;

-- Table Professor

CREATE TABLE "Professor"(
 "Username" Character varying(20) NOT NULL,
 "Escola" Character varying(40) NOT NULL,
 "AreaDeConhecimento" Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Professor

CREATE INDEX "IX_Relationship8" ON "Professor" ("AreaDeConhecimento")
;

-- Add keys for table Professor

ALTER TABLE "Professor" ADD CONSTRAINT "PK_Professor" PRIMARY KEY ("Username")
;

-- Table Administrador

CREATE TABLE "Administrador"(
 "Username" Character varying(20) NOT NULL,
 "Escola" Character varying(40) NOT NULL,
 "NumeroAprovacoes" Integer NOT NULL,
 "TempoComoAdministrador" Time NOT NULL,
 "AreaDeConhecimento" Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Administrador

CREATE INDEX "IX_Relationship7" ON "Administrador" ("AreaDeConhecimento")
;

-- Add keys for table Administrador

ALTER TABLE "Administrador" ADD CONSTRAINT "PK_Administrador" PRIMARY KEY ("Username")
;

-- Table Publicacao

CREATE TABLE "Publicacao"(
 "CodigoPublicacao" Serial NOT NULL,
 "NomePublicacao" Character varying(30) NOT NULL,
 "Conteudo" Text NOT NULL,
 "StatusPublicacao" Character(1) NOT NULL,
 "Username" Character varying(20),
 "AreaDeConhecimento" Integer,
 "DataPublicacao" Date
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Publicacao

CREATE INDEX "IX_Relationship15" ON "Publicacao" ("Username")
;

CREATE INDEX "IX_Relationship16" ON "Publicacao" ("AreaDeConhecimento")
;

-- Add keys for table Publicacao

ALTER TABLE "Publicacao" ADD CONSTRAINT "PK_Publicacao" PRIMARY KEY ("CodigoPublicacao")
;

-- Table Resposta

CREATE TABLE "Resposta"(
 "CodigoResposta" Integer NOT NULL,
 "Username" Character varying(20) NOT NULL,
 "CodigoPergunta" Integer NOT NULL,
 "TextoResposta" Text NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table Resposta

ALTER TABLE "Resposta" ADD CONSTRAINT "PK_Resposta" PRIMARY KEY ("CodigoPergunta","CodigoResposta","Username")
;

-- Table Pergunta

CREATE TABLE "Pergunta"(
 "CodigoPergunta" Integer NOT NULL,
 "TituloPergunta" Character varying(140) NOT NULL,
 "AreaDeConhecimento" Integer NOT NULL,
 "Username" Character varying(20),
 "ExplicacaoDaPergunta" Text
)
WITH (
 autovacuum_enabled=true)
;

-- Create indexes for table Pergunta

CREATE INDEX "IX_Relationship10" ON "Pergunta" ("AreaDeConhecimento")
;

CREATE INDEX "IX_Relationship19" ON "Pergunta" ("Username")
;

-- Add keys for table Pergunta

ALTER TABLE "Pergunta" ADD CONSTRAINT "PK_Pergunta" PRIMARY KEY ("CodigoPergunta")
;

-- Table ImagemAnexaAPublicacao

CREATE TABLE "ImagemAnexaAPublicacao"(
 "CodigoImagem" Integer NOT NULL,
 "CodigoPublicacao" Integer NOT NULL
)
WITH (
 autovacuum_enabled=true)
;

-- Add keys for table ImagemAnexaAPublicacao

ALTER TABLE "ImagemAnexaAPublicacao" ADD CONSTRAINT "PK_ImagemAnexaAPublicacao" PRIMARY KEY ("CodigoImagem","CodigoPublicacao")
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Usuario" ADD CONSTRAINT "Relationship1" FOREIGN KEY ("Genero") REFERENCES "Genero" ("CodigoGenero") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Aluno" ADD CONSTRAINT "Relationship4" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Professor" ADD CONSTRAINT "Relationship5" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Administrador" ADD CONSTRAINT "Relationship6" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Administrador" ADD CONSTRAINT "Relationship7" FOREIGN KEY ("AreaDeConhecimento") REFERENCES "AreaDeConhecimento" ("CodigoAreaDeConhecimento") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Professor" ADD CONSTRAINT "Relationship8" FOREIGN KEY ("AreaDeConhecimento") REFERENCES "AreaDeConhecimento" ("CodigoAreaDeConhecimento") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Usuario" ADD CONSTRAINT "Relationship9" FOREIGN KEY ("Foto") REFERENCES "Imagem" ("CodigoImagem") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Pergunta" ADD CONSTRAINT "Relationship10" FOREIGN KEY ("AreaDeConhecimento") REFERENCES "AreaDeConhecimento" ("CodigoAreaDeConhecimento") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "ImagemAnexaAPublicacao" ADD CONSTRAINT "Relationship13" FOREIGN KEY ("CodigoImagem") REFERENCES "Imagem" ("CodigoImagem") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "ImagemAnexaAPublicacao" ADD CONSTRAINT "Relationship14" FOREIGN KEY ("CodigoPublicacao") REFERENCES "Publicacao" ("CodigoPublicacao") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Publicacao" ADD CONSTRAINT "Relationship15" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Publicacao" ADD CONSTRAINT "Relationship16" FOREIGN KEY ("AreaDeConhecimento") REFERENCES "AreaDeConhecimento" ("CodigoAreaDeConhecimento") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Resposta" ADD CONSTRAINT "Relationship17" FOREIGN KEY ("CodigoPergunta") REFERENCES "Pergunta" ("CodigoPergunta") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Pergunta" ADD CONSTRAINT "Relationship19" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Resposta" ADD CONSTRAINT "Relationship20" FOREIGN KEY ("Username") REFERENCES "Usuario" ("Username") ON DELETE NO ACTION ON UPDATE NO ACTION
;




