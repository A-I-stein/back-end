INSERT INTO Genero (Nome_Genero)
	VALUES
		('Ag�nero'),
		('Feminino'),
		('Masculino'),
		('N�obin�rie'),
		('Outro');

INSERT INTO Imagem (Caminho_Imagem)
	VALUES
		('https://pbs.twimg.com/profile_images/949787136030539782/LnRrYf6e.jpg'),
		('https://ichef.bbci.co.uk/news/660/cpsprodpb/13F00/production/_95146618_bills.jpg'),
		('http://www.apimages.com/Images/Ap_Creative_Stock_Header.jpg'),
		('https://edit.co.uk/uploads/2016/12/Image-1-Alternatives-to-stock-photography-Thinkstock.jpg'),
		('https://static.boredpanda.com/blog/wp-content/uploads/2018/05/emilia-clarke-making-stock-photos-5-5b0801c7504b2__700.jpg');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero)
	VALUES
		('Testador','Gabriel','123','teste@email.com', CURRENT_DATE,'A',2,3);

INSERT INTO Materia(Nome_Materia)
	VALUES
		('Movimento'),
		('Som & Ondas'),
		('Trabalho, Energia & Pot�ncia'),
		('Calor & Termodin�mica'),
		('Mec�nica Qu�ntica'),
		('Som & Ondas'),
		('Luz & Radia��o'),
		('Electricidade, Magnetismo & Circuitos');

INSERT INTO Usuario (Nome_Conteudo, Texto_Conteudo, Materia, Resumo_Conteudo, Tipo_Conteudo)
	VALUES
		('Teoria da Relatividade', 'A Relatividade Especial � uma teoria publicada no ano de 1905 por Albert Einstein, concluindo estudos precedentes do f�sico neerland�s Hendrik Lorentz, entre outros. Ela substitui os conceitos independentes de espa�o e tempo da Teoria de Newton pela ideia de espa�o-tempo como uma entidade geom�trica unificada. O espa�o-tempo na relatividade especial consiste de uma variedade diferenci�vel de 4 dimens�es, tr�s espaciais e uma temporal (a quarta dimens�o), munida de uma m�trica pseudo-riemanniana, o que permite que no��es de geometria possam ser utilizadas. � nessa teoria, tamb�m, que surge a ideia de velocidade da luz invariante.

O termo especial � usado porque ela � um caso particular do princ�pio da relatividade em que efeitos da gravidade s�o ignorados. Dez anos ap�s a publica��o da teoria especial, Einstein publicou a Teoria Geral da Relatividade, que � a vers�o mais ampla da teoria, em que os efeitos da gravita��o s�o integrados, surgindo a no��o de espa�o-tempo curvo.', 4, 'Teoria da Relatividade � a denomina��o dada ao conjunto de duas teorias cient�ficas: a Relatividade Restrita (ou Especial) e a Relatividade Geral.', 'O');

INSERT INTO ImagemAnexaAPublicacao (Codigo_Imagem, Codigo_conteudo )
	VALUES
		(1,0);


INSERT INTO Questionario(Codigo_Materia)
	VALUES
		(1);

INSERT INTO Pergunta(Descricao_Pergunta, Codigo_Questionario)
	VALUES
		('Responda com sim o n�o. Porque o c�u � azul?',0), 
		('Qual das alternativas abaixo representa a melhor letra',0);

INSERT INTO Resposta(Descricao_Resposta, Codigo_Pergunta, Codigo_Questionario)
	VALUES
		('vermelho',0,0),
		('amarelo',0,0),
		('cinza',0,0),
		('verde',0,0),
		('a',1,0),
		('b',1,0),
		('c',1,0),
		('d',1,0);