INSERT INTO Genero (Codigo_Genero, Nome_Genero)
	VALUES
		(0,'Agênero'),
		(1,'Feminino'),
		(2,'Masculino'),
		(3,'Nãobinárie'),
		(4,'Outro');

INSERT INTO Imagem (Codigo_Imagem, Caminho_Imagem)
	VALUES
		(0,'https://pbs.twimg.com/profile_images/949787136030539782/LnRrYf6e.jpg'),
		(1,'https://ichef.bbci.co.uk/news/660/cpsprodpb/13F00/production/_95146618_bills.jpg'),
		(2,'http://www.apimages.com/Images/Ap_Creative_Stock_Header.jpg'),
		(3,'https://edit.co.uk/uploads/2016/12/Image-1-Alternatives-to-stock-photography-Thinkstock.jpg'),
		(4,'https://static.boredpanda.com/blog/wp-content/uploads/2018/05/emilia-clarke-making-stock-photos-5-5b0801c7504b2__700.jpg');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero)
	VALUES
		('Testador','Gabriel','123','teste@email.com', CURRENT_DATE,'A',3,2);

INSERT INTO Materia(Codigo_Materia, Nome_Materia)
	VALUES
		(0,'Movimento'),
		(1,'Som & Ondas'),
		(2,'Trabalho, Energia & Potência'),
		(3,'Calor & Termodinâmica'),
		(4,'Mecânica Quântica'),
		(5,'Luz & Radiação'),
		(6,'Electricidade, Magnetismo & Circuitos');

INSERT INTO Conteudo (Codigo_Conteudo, Nome_Conteudo, Texto_Conteudo, Materia, Resumo_Conteudo, Tipo_Conteudo)
	VALUES
		('Teoria da Relatividade', 'A Relatividade Especial é uma teoria publicada no ano de 1905 por Albert Einstein, concluindo estudos precedentes do físico neerlandês Hendrik Lorentz, entre outros. Ela substitui os conceitos independentes de espaço e tempo da Teoria de Newton pela ideia de espaço-tempo como uma entidade geométrica unificada. O espaço-tempo na relatividade especial consiste de uma variedade diferenciável de 4 dimensões, três espaciais e uma temporal (a quarta dimensão), munida de uma métrica pseudo-riemanniana, o que permite que noções de geometria possam ser utilizadas. É nessa teoria, também, que surge a ideia de velocidade da luz invariante.

O termo especial é usado porque ela é um caso particular do princípio da relatividade em que efeitos da gravidade são ignorados. Dez anos após a publicação da teoria especial, Einstein publicou a Teoria Geral da Relatividade, que é a versão mais ampla da teoria, em que os efeitos da gravitação são integrados, surgindo a noção de espaço-tempo curvo.', 4, 'Teoria da Relatividade é a denominação dada ao conjunto de duas teorias científicas: a Relatividade Restrita (ou Especial) e a Relatividade Geral.', 'O');

INSERT INTO ImagemAnexaAPublicacao (Codigo_Imagem, Codigo_conteudo )
	VALUES
		(1,0);


INSERT INTO Questionario(Codigo_Questionario, Codigo_Materia)
	VALUES
		(0,1);

INSERT INTO Pergunta(Codigo_Pergunta, Descricao_Pergunta, Codigo_Questionario)
	VALUES
		(0,'Responda com sim o não. Porque o céu é azul?',0), 
		(1,'Qual das alternativas abaixo representa a melhor letra',0);

INSERT INTO Resposta(Codigo_Resposta, Descricao_Resposta, Codigo_Pergunta, Codigo_Questionario)
	VALUES
		(0,'vermelho',0,0),
		(1,'amarelo',0,0),
		(2,'cinza',0,0),
		(3,'verde',0,0),
		(0,'a',1,0),
		(1,'b',1,0),
		(2,'c',1,0),
		(3,'d',1,0);