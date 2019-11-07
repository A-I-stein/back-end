INSERT INTO Genero (Codigo_Genero, Nome_Genero)
	VALUES
		(0,'Ag�nero'),
		(1,'Feminino'),
		(2,'Masculino'),
		(3,'N�obin�rie'),
		(4,'Outro');

INSERT INTO Imagem (Codigo_Imagem, Caminho_Imagem)
	VALUES
		(0,'https://pbs.twimg.com/profile_images/949787136030539782/LnRrYf6e.jpg'),
		(1,'https://ichef.bbci.co.uk/news/660/cpsprodpb/13F00/production/_95146618_bills.jpg'),
		(2,'http://www.apimages.com/Images/Ap_Creative_Stock_Header.jpg'),
	
	(3,'https://edit.co.uk/uploads/2016/12/Image-1-Alternatives-to-stock-photography-Thinkstock.jpg'),
	
	(4,'https://static.boredpanda.com/blog/wp-content/uploads/2018/05/emilia-clarke-making-stock-photos-5-5b0801c7504b2__700.jpg'),
	
	(5,'https://phet-downloads.colorado.edu/sims/html/masses-and-springs-basics/latest/masses-and-springs-basics-128.png'),
	
	(6,'https://phet-downloads.colorado.edu/sims/html/masses-and-springs/latest/masses-and-springs-128.png'),
	
	(7,'https://phet-downloads.colorado.edu/sims/html/gravity-and-orbits/latest/gravity-and-orbits-128.png');

INSERT INTO Materia(Codigo_Materia, Nome_Materia)
	VALUES
		(0,'Movimento'),
		(1,'Som & Ondas'),
		(2,'Trabalho, Energia & Pot�ncia'),
		(3,'Calor & Termodin�mica'),
		(4,'Mec�nica Qu�ntica'),
		(5,'Luz & Radia��o'),
		(6,'Electricidade, Magnetismo & Circuitos');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero, Data_Nascimento)
	VALUES
		('Itabirito','Gabriel Cruz','123','teste@email.com', CURRENT_DATE,'A',2,4, null),
		('Patolino','Arthur Marcolino','kkk','teste@yahoo.com.br', CURRENT_DATE,'P',4,2, null),
		('Almo�o','Italo Fidelis','senha','teste@hotmail.com', CURRENT_DATE,'E',0,1, CURRENT_DATE),
		('Tot�','Heitor Santos','654321','teste@gmail.com', CURRENT_DATE,'I',3,0, null);

INSERT INTO Administrador (Username, Escola, Numero_Aprovacoes, Dias_Como_Administrador, Materia)
	VALUES
		('Itabirito','UFMG', 4, 10, 2);

INSERT INTO Professor (Username, Escola, Materia)
	VALUES
		('Patolino','MIT', 4);

INSERT INTO Aluno (Username, Escola)
	VALUES
		('Almo�o', 'CEFET-MG');

INSERT INTO Conteudo (Codigo_Conteudo, Nome_Conteudo, Texto_Conteudo, Materia, Resumo_Conteudo, Tipo_Conteudo)
	VALUES
		(0, 'Teoria da Relatividade', 'A Relatividade Especial � uma teoria publicada no ano de 1905 por Albert Einstein, concluindo estudos precedentes do f�sico neerland�s Hendrik Lorentz, entre outros. Ela substitui os conceitos independentes de espa�o e tempo da Teoria de Newton pela ideia de espa�o-tempo como uma entidade geom�trica unificada. O espa�o-tempo na relatividade especial consiste de uma variedade diferenci�vel de 4 dimens�es, tr�s espaciais e uma temporal (a quarta dimens�o), munida de uma m�trica pseudo-riemanniana, o que permite que no��es de geometria possam ser utilizadas. � nessa teoria, tamb�m, que surge a ideia de velocidade da luz invariante.
		O termo especial � usado porque ela � um caso particular do princ�pio da relatividade em que efeitos da gravidade s�o ignorados. Dez anos ap�s a publica��o da teoria especial, Einstein publicou a Teoria Geral da Relatividade, que � a vers�o mais ampla da teoria, em que os efeitos da gravita��o s�o integrados, surgindo a no��o de espa�o-tempo curvo.', 4, 'Teoria da Relatividade � a denomina��o dada ao conjunto de duas teorias cient�ficas: a Relatividade Restrita (ou Especial) e a Relatividade Geral.', 'O');

INSERT INTO ImagemAnexaAConteudo (Codigo_Imagem, Codigo_conteudo )
	VALUES
		(1,0);

INSERT INTO Jogo(Codigo_Jogo, Nome_Jogo, URL_Jogo, Creditos_Jogo, Codigo_Imagem, Codigo_Materia)
	VALUES
		(0,'Massas e Molas: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs-basics/latest/masses-and-springs-basics_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
Amy Rouinfar (lead designer)
Mike Dubson (original designer)
Wendy Adams
Ariel Paul
Kathy Perkins',5,0),
		(1,'Massas e Molas', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs/latest/masses-and-springs_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
Matt Pennington (developer)
Amy Rouinfar (lead designer)
Mike Dubson (original designer)
Wendy Adams
Ariel Paul
Kathy Perkins',6,0),
		(2,'Gravidade e �rbitas', '<iframe src="https://phet.colorado.edu/sims/html/gravity-and-orbits/latest/gravity-and-orbits_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
Emily Moore (lead designer)
Noah Podolefsky (lead designer)
Trish Loeblein
Ariel Paul
Kathy Perkins
Jesse Greenberg (lead developer)
Sam Reid (lead developer)
Aaron Davis (developer)
Jon Olson (developer)',7,0);




INSERT INTO Questionario(Codigo_Questionario, Codigo_Materia)
	VALUES
		(0,1);

INSERT INTO Pergunta(Codigo_Pergunta, Descricao_Pergunta, Codigo_Questionario)
	VALUES
		(0,'Responda com sim o n�o. Porque o c�u � azul?',0), 
		(1,'Qual das alternativas abaixo representa a melhor letra',0);

INSERT INTO Resposta(Codigo_Resposta, Descricao_Resposta, Codigo_Pergunta, Codigo_Questionario, Resposta_Correta)
	VALUES
		(0,'vermelho',0,0,false),
		(1,'amarelo',0,0,false),
		(2,'cinza',0,0,true),
		(3,'verde',0,0,false),
		(0,'a',1,0,false),
		(1,'b',1,0,false),
		(2,'c',1,0,false),
		(3,'d',1,0,true);