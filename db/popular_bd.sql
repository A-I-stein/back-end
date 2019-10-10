INSERT INTO Genero (Nome_Genero)
	VALUES
		('Agênero'),
		('Feminino'),
		('Masculino'),
		('Nãobinárie'),
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
		('Trabalho, Energia & Potência'),
		('Calor & Termodinâmica'),
		('Mecânica Quântica'),
		('Som & Ondas'),
		('Luz & Radiação'),
		('Electricidade, Magnetismo & Circuitos');

INSERT INTO Usuario (Nome_Conteudo, Texto_Conteudo, Materia, Resumo_Conteudo, Tipo_Conteudo)
	VALUES
		('Teoria da Relatividade', 'A Relatividade Especial é uma teoria publicada no ano de 1905 por Albert Einstein, concluindo estudos precedentes do físico neerlandês Hendrik Lorentz, entre outros. Ela substitui os conceitos independentes de espaço e tempo da Teoria de Newton pela ideia de espaço-tempo como uma entidade geométrica unificada. O espaço-tempo na relatividade especial consiste de uma variedade diferenciável de 4 dimensões, três espaciais e uma temporal (a quarta dimensão), munida de uma métrica pseudo-riemanniana, o que permite que noções de geometria possam ser utilizadas. É nessa teoria, também, que surge a ideia de velocidade da luz invariante.

O termo especial é usado porque ela é um caso particular do princípio da relatividade em que efeitos da gravidade são ignorados. Dez anos após a publicação da teoria especial, Einstein publicou a Teoria Geral da Relatividade, que é a versão mais ampla da teoria, em que os efeitos da gravitação são integrados, surgindo a noção de espaço-tempo curvo.', 4, 'Teoria da Relatividade é a denominação dada ao conjunto de duas teorias científicas: a Relatividade Restrita (ou Especial) e a Relatividade Geral.', 'O');

INSERT INTO ImagemAnexaAPublicacao (Codigo_Imagem, Codigo_conteudo )
	VALUES
		(1,0);


INSERT INTO Questionario(Codigo_Materia)
	VALUES
		(1);

INSERT INTO Pergunta(Descricao_Pergunta, Codigo_Questionario)
	VALUES
		('Responda com sim o não. Porque o céu é azul?',0), 
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