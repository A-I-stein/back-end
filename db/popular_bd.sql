/*
Created: 17/09/2019
Modified: 12/11/2019
Project: A.I.stein
Model: PostgreSQL 10
Company: A.I.stein
Author: Gabriel Cruz
Version: 3.0
Database: PostgreSQL 10
*/

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
		(7,'https://phet-downloads.colorado.edu/sims/html/gravity-and-orbits/latest/gravity-and-orbits-128.png'),
		(8,'https://phet-downloads.colorado.edu/sims/html/vector-addition/latest/vector-addition-128.png'),
		(9,'https://phet-downloads.colorado.edu/sims/html/gravity-force-lab-basics/latest/gravity-force-lab-basics-128.png'),
		(10,'https://phet-downloads.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab-128.png'),
		(11,'https://phet-downloads.colorado.edu/sims/html/projectile-motion/latest/projectile-motion-128.png'),
		(12,'https://phet-downloads.colorado.edu/sims/html/hookes-law/latest/hookes-law-128.png'),
		(13,'https://phet-downloads.colorado.edu/sims/html/forces-and-motion-basics/latest/forces-and-motion-basics-128.png'),
		(14,'https://phet-downloads.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics-128.png'),
		(15,'https://phet-downloads.colorado.edu/sims/html/balancing-act/latest/balancing-act-128.png'),
		(16,'https://phet-downloads.colorado.edu/sims/html/friction/latest/friction-128.png'),
		(17,'https://phet-downloads.colorado.edu/sims/html/gravity-force-lab/latest/gravity-force-lab-128.png'),
		(18,'https://phet-downloads.colorado.edu/sims/html/waves-intro/latest/waves-intro-128.png'),
		(19,'https://phet-downloads.colorado.edu/sims/html/wave-interference/latest/wave-interference-128.png'),
		(20,'https://phet-downloads.colorado.edu/sims/html/wave-on-a-string/latest/wave-on-a-string-128.png'),
		(21,'https://phet-downloads.colorado.edu/sims/html/gas-properties/latest/gas-properties-128.png'),
		(22,'https://phet-downloads.colorado.edu/sims/html/energy-forms-and-changes/latest/energy-forms-and-changes-128.png'),
		(23,'https://phet-downloads.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab-128.png'),
		(24,'https://phet-downloads.colorado.edu/sims/html/diffusion/latest/diffusion-128.png'),
		(25,'https://phet-downloads.colorado.edu/sims/html/gases-intro/latest/gases-intro-128.png'),
		(26,'https://phet-downloads.colorado.edu/sims/html/gas-properties/latest/gas-properties-128.png'),
		(27,'https://phet-downloads.colorado.edu/sims/html/plinko-probability/latest/plinko-probability-128.png'),
		(28,'https://phet-downloads.colorado.edu/sims/html/states-of-matter-basics/latest/states-of-matter-basics-128.png'),
		(29,'https://phet-downloads.colorado.edu/sims/html/states-of-matter/latest/states-of-matter-128.png'),
		(30,'https://phet-downloads.colorado.edu/sims/html/atomic-interactions/latest/atomic-interactions-128.png'),
		(31,'https://phet-downloads.colorado.edu/sims/html/blackbody-spectrum/latest/blackbody-spectrum-128.png'),
		(32,'https://phet-downloads.colorado.edu/sims/html/rutherford-scattering/latest/rutherford-scattering-128.png'),
		(33,'https://phet-downloads.colorado.edu/sims/html/waves-intro/latest/waves-intro-128.png'),
		(34,'https://phet-downloads.colorado.edu/sims/html/wave-interference/latest/wave-interference-128.png'),
		(35,'https://phet-downloads.colorado.edu/sims/html/bending-light/latest/bending-light-128.png'),
		(36,'https://phet-downloads.colorado.edu/sims/html/molecules-and-light/latest/molecules-and-light-128.png'),
		(37,'https://phet-downloads.colorado.edu/sims/html/color-vision/latest/color-vision-128.png'),
		(38,'https://phet-downloads.colorado.edu/sims/html/coulombs-law/latest/coulombs-law-128.png'),
		(39,'https://phet-downloads.colorado.edu/sims/html/capacitor-lab-basics/latest/capacitor-lab-basics-128.png'),
		(40,'https://phet-downloads.colorado.edu/sims/html/circuit-construction-kit-dc-virtual-lab/latest/circuit-construction-kit-dc-virtual-lab-128.png'),
		(41,'https://phet-downloads.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc-128.png'),
		(42,'https://phet-downloads.colorado.edu/sims/html/charges-and-fields/latest/charges-and-fields-128.png'),
		(43,'https://phet-downloads.colorado.edu/sims/html/balloons-and-static-electricity/latest/balloons-and-static-electricity-128.png'),
		(44,'https://phet-downloads.colorado.edu/sims/html/faradays-law/latest/faradays-law-128.png'),
		(45,'https://phet-downloads.colorado.edu/sims/html/john-travoltage/latest/john-travoltage-128.png'),
		(46,'https://phet-downloads.colorado.edu/sims/html/ohms-law/latest/ohms-law-128.png'),
		(47,'https://phet-downloads.colorado.edu/sims/html/resistance-in-a-wire/latest/resistance-in-a-wire-128.png');

INSERT INTO Materia(Codigo_Materia, Nome_Materia)
	VALUES
		(0,'Movimento'),
		(1,'Som e Ondas'),
		(2,'Trabalho, Energia e Pot�ncia'),
		(3,'Calor e Termodin�mica'),
		(4,'Mec�nica Qu�ntica'),
		(5,'Luz e Radia��o'),
		(6,'Electricidade, Magnetismo e Circuitos');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero, Data_Nascimento)
	VALUES
		('Gabriel','Gabriel Cruz','123','teste@email.com', CURRENT_DATE,'A',2,4, null),
		('Patolino','Arthur Marcolino','kkk','teste@yahoo.com.br', CURRENT_DATE,'P',4,2, null),
		('Almo�o','Italo Fidelis','senha','teste@hotmail.com', CURRENT_DATE,'E',0,1, CURRENT_DATE),
		('Tot�','Heitor Santos','654321','teste@gmail.com', CURRENT_DATE,'I',3,0, null);

INSERT INTO Administrador (Username, Escola, Numero_Aprovacoes, Dias_Como_Administrador, Materia)
	VALUES
		('Gabriel','CEFET_MG', 4, 10, 2);

INSERT INTO Professor (Username, Escola, Materia)
	VALUES
		('Patolino','CEFET_MG', 4);

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
		(0,'Adi��o de Vetores', '<iframe src="https://phet.colorado.edu/sims/html/vector-addition/latest/vector-addition_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Brandon Li (developer)
			Chris Malley (developer)
			Martin Veillette (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Diana L�pez Tavares
			Amanda McGarry
			Ariel Paul
			Kathy Perkins',8,0),
		(1,'Laborat�rio de For�a Grav�tica: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/gravity-force-lab-basics/latest/gravity-force-lab-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Barlow (developer)
			John Blanco (developer)
			Jesse Greenberg (developer)
			Michael Kauzmann (developer)
			Amy Rouinfar (lead designer)
			Ariel Paul
			Kathy Perkins
			Emily B. Moore
			Taliesin Smith
			Brianna Tomlinson
			Mariah Hermsmeyer (graphic arts)',9,0),
		(2,'Massas e Molas: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs-basics/latest/masses-and-springs-basics_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
			Amy Rouinfar (lead designer)
			Mike Dubson (original designer)
			Wendy Adams
			Ariel Paul
			Kathy Perkins',5,0),
		(3,'Massas e Molas', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs/latest/masses-and-springs_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
			Matt Pennington (developer)
			Amy Rouinfar (lead designer)
			Mike Dubson (original designer)
			Wendy Adams
			Ariel Paul
			Kathy Perkins',6,0),
		(4,'Laborat�rio do P�ndulo', '<iframe src="https://phet.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Jonathon Olson (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',10,0),
		(5,'Movimento de Proj�til', '<iframe src="https://phet.colorado.edu/sims/html/projectile-motion/latest/projectile-motion_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Andrea Lin (developer)
			Wendy Adams
			John Blanco
			Mike Dubson
			Amanda McGarry
			Ariel Paul
			Kathy Perkins',11,0),
		(6,'Gravidade e �rbitas', '<iframe src="https://phet.colorado.edu/sims/html/gravity-and-orbits/latest/gravity-and-orbits_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Emily Moore (lead designer)
			Noah Podolefsky (lead designer)
			Trish Loeblein
			Ariel Paul
			Kathy Perkins
			Jesse Greenberg (lead developer)
			Sam Reid (lead developer)
			Aaron Davis (developer)
			Jon Olson (developer)',7,0),
		(7,'Lei de Hooke', '<iframe src="https://phet.colorado.edu/sims/html/hookes-law/latest/hookes-law_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
			Chris Malley (developer)
			Mike Dubson
			Bruna Shinohara de Mendon�a
			Ariel Paul
			Kathy Perkins
			Martin Veillette',12,0),
		(8,'For�as e Movimento: No��es B�sicas', '<iframe src="https://phet.colorado.edu/sims/html/forces-and-motion-basics/latest/forces-and-motion-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Sam Reid (developer)
			Patricia Loeblein
			Ariel Paul
			Kathy Perkins',13,0),
		(9,'Energia do Parque de Skate: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Ariel Paul (lead)
			Noah Podolefsky (lead)
			Sam Reid (lead, developer)
			Michael Dubson
			Bryce Gruneich
			Patricia Loeblein
			Emily B. Moore
			Kathy Perkins
			Sharon Siman-Tov (graphic arts)
			Amanda McGarry (graphic arts)',14,0),
		(10,'Lei de Equil�brio', '<iframe src="https://phet.colorado.edu/sims/html/balancing-act/latest/balancing-act_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Kathy Perkins (lead)
			Ariel Paul (lead)
			John Blanco (lead, developer)
			Michael Dubson
			Patricia Loeblein',15,0),
		(11,'Atrito', '<iframe src="https://phet.colorado.edu/sims/html/friction/latest/friction_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Michael Dubson (lead, developer)
			John Blanco (developer)
			Jonathan Olson (developer)
			Bryce Gruneich
			Ariel Paul
			Kathy Perkins
			Carl Wieman
			Wendy Adams (interviewer)
			Mindy Gratny (interviewer)
			Emily B. Moore (interviewer)',16,0),
		(13,'Laborat�rio de For�a Grav�tica', '<iframe src="https://phet.colorado.edu/sims/html/gravity-force-lab/latest/gravity-force-lab_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (developer)
			John Blaco (developer)
			Noah Podolefsky
			Carl Wieman
			Wendy Adams
			Patricia Loeblein',17,0),
		(14,'Ondas: Intro', '<iframe src="https://phet.colorado.edu/sims/html/waves-intro/latest/waves-intro_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana L�pez Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts)',18,1),
		(15,'Interfer�ncia de Onda', '<iframe src="https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana L�pez Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts)',19,1),
		(16,'Simulador de Onda numa Corda', '<iframe src="https://phet.colorado.edu/sims/html/wave-on-a-string/latest/wave-on-a-string_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Ariel Paul (lead)
			Michael Dubson (lead, developer)
			Jonathan Olson (developer)
			Patricia Loeblein
			Kathy Perkins
			Amy Rouinfar
			Sharon Siman-Tov (graphic arts)',20,1),
		(17,'Propriedades dos Gases', '<iframe src="https://phet.colorado.edu/sims/html/gas-properties/latest/gas-properties_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
			Amy Rouinfar (lead designer)
			Jack Barbera
			John Blanco
			Michael Dubson
			Amy Hanson
			Linda Koch
			Ron LeMaster
			Trish Loeblein
			Emily B. Moore
			Ariel Paul
			Kathy Perkins
			Carl Wieman',21,2),
		(18,'Formas e transforma��es de energia', '<iframe src="https://phet.colorado.edu/sims/html/energy-forms-and-changes/latest/energy-forms-and-changes_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Klusendorf (lead developer)
			John Blanco (developer)
			Andrew Adare (developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky
			Trish Loeblein
			Emily Moore
			Kathy Perkins
			Mariah Hermsmeyer (graphic arts)
			Megan Lai (graphic arts)',22,2),
		(19,'Massas e Molas', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs/latest/masses-and-springs_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
			Matt Pennington (developer)
			Amy Rouinfar (lead designer)
			Mike Dubson (original designer)
			Wendy Adams
			Ariel Paul
			Kathy Perkins',6 ,2),
		(20,'Laborat�rio do P�ndulo', '<iframe src="https://phet.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Jonathon Olson (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',23,2),
		(21,'Lei de Hooke', '<iframe src="https://phet.colorado.edu/sims/html/hookes-law/latest/hookes-law_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
			Chris Malley (developer)
			Mike Dubson
			Bruna Shinohara de Mendon�a
			Ariel Paul
			Kathy Perkins
			Martin Veillette',13,2),
		(22,'Energia do Parque de Skate: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Ariel Paul (lead)
			Noah Podolefsky (lead)
			Sam Reid (lead, developer)
			Michael Dubson
			Bryce Gruneich
			Patricia Loeblein
			Emily B. Moore
			Kathy Perkins
			Sharon Siman-Tov (graphic arts)
			Amanda McGarry (graphic arts)',14,2),
		(23,'Difus�o', '<iframe src="https://phet.colorado.edu/sims/html/diffusion/latest/diffusion_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
			Amy Rouinfar (lead designer)
			Jack Barbera
			John Blanco
			Michael Dubson
			Amy Hanson
			Linda Koch
			Ron LeMaster
			Trish Loeblein
			Emily B. Moore
			Ariel Paul
			Kathy Perkins
			Carl Wieman',24,3),
		(24,'Gases: Introdu��o', '<iframe src="https://phet.colorado.edu/sims/html/gases-intro/latest/gases-intro_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
			Amy Rouinfar (lead designer)
			Jack Barbera
			John Blanco
			Michael Dubson
			Amy Hanson
			Linda Koch
			Ron LeMaster
			Trish Loeblein
			Emily B. Moore
			Ariel Paul
			Kathy Perkins
			Carl Wieman',25,3),
		(25,'Propriedades dos Gases', '<iframe src="https://phet.colorado.edu/sims/html/gas-properties/latest/gas-properties_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
			Amy Rouinfar (lead designer)
			Jack Barbera
			John Blanco
			Michael Dubson
			Amy Hanson
			Linda Koch
			Ron LeMaster
			Trish Loeblein
			Emily B. Moore
			Ariel Paul
			Kathy Perkins
			Carl Wieman',26,3),
		(26,'Formas e transforma��es de energia', '<iframe src="https://phet.colorado.edu/sims/html/energy-forms-and-changes/latest/energy-forms-and-changes_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Klusendorf (lead developer)
			John Blanco (developer)
			Andrew Adare (developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky
			Trish Loeblein
			Emily Moore
			Kathy Perkins
			Mariah Hermsmeyer (graphic arts)
			Megan Lai (graphic arts)',22,3),
		(27,'Probabilidade Plinko', '<iframe src="https://phet.colorado.edu/sims/html/plinko-probability/latest/plinko-probability_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Martin Veillette (developer)
			Denzell Barnett (developer)
			Chris Malley (developer)
			Guillermo Ramos-Macias (developer)
			Amanda McGarry (lead designer)
			Michael Dubson (original designer)
			Karina K. Hensberry
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',27,3),
		(28,'Estados da Mat�ria: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/states-of-matter-basics/latest/states-of-matter-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Yuen-ying Carpenter (lead designer, HTML5)
			Amy Rouinfar (lead designer, HTML5)
			Paul Beale (lead designer, Java)
			Sarah McKagan (lead designer, Java)
			Emily Moore (lead designer, Java)
			Noah Podolefsky (lead designer, Java)
			John Blanco (lead developer)
			Aaron Davis (developer)
			Aadish Gupta (developer)
			Wendy Adams
			Jack Barbera
			Amy Hanson
			Kelly Lancaster
			Ariel Paul
			Kathy Perkins',28,3),
		(29,'States of Matter', '<iframe src="https://phet.colorado.edu/sims/html/states-of-matter/latest/states-of-matter_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Yuen-ying Carpenter (lead designer, HTML5)
			Amy Rouinfar (lead designer, HTML5)
			Paul Beale (lead designer, Java)
			Sarah McKagan (lead designer, Java)
			Emily Moore (lead designer, Java)
			Noah Podolefsky (lead designer, Java)
			John Blanco (lead developer)
			Aaron Davis (developer)
			Aadish Gupta (developer)
			Wendy Adams
			Jack Barbera
			Amy Hanson
			Kelly Lancaster
			Ariel Paul
			Kathy Perkins',29,3),
		(30,'Intera��es At�micas', '<iframe src="https://phet.colorado.edu/sims/html/atomic-interactions/latest/atomic-interactions_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Yuen-ying Carpenter (lead designer, HTML5)
			Amy Rouinfar (lead designer, HTML5)
			Paul Beale (lead designer, Java)
			Sarah McKagan (lead designer, Java)
			Emily Moore (lead designer, Java)
			Noah Podelefsky (lead designer, Java)
			John Blanco (developer)
			Wendy Adams
			Jack Barbera
			Amy Hanson
			Kelly Lancaster
			Ariel Paul
			Kathy Perkins
			Carl Wieman',30,3),
		(31,'Atrito', '<iframe src="https://phet.colorado.edu/sims/html/friction/latest/friction_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Michael Dubson (lead, developer)
			John Blanco (developer)
			Jonathan Olson (developer)
			Bryce Gruneich
			Ariel Paul
			Kathy Perkins
			Carl Wieman
			Wendy Adams (interviewer)
			Mindy Gratny (interviewer)
			Emily B. Moore (interviewer)',17,3),
		(32,'Espectro do Corpo Negro', '<iframe src="https://phet.colorado.edu/sims/html/blackbody-spectrum/latest/blackbody-spectrum_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Arnab Purkayastha (developer)
			Saurabh Totey (developer)
			Martin Veillette (developer)
			Diana L�pez Tavares (lead designer)
			Michael Dubson (original designer)
			Wendy Adams
			John Blanco
			Ariel Paul
			Kathy Perkins',31,4),
		(33,'Dispers�o de Rutherford', '<iframe src="https://phet.colorado.edu/sims/html/rutherford-scattering/latest/rutherford-scattering_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Hanson
			Sam McKagan
			Jesse Greenberg
			Chris Malley
			Dave Schmitz
			Wendy Adams
			Michael Dubson
			Noah Finkelstein
			Danielle Harlow
			Ariel Paul
			Kathy Perkins
			Noah Podolefsky
			Carl Wieman',32,4),
		(34,'Ondas: Intro', '<iframe src="https://phet.colorado.edu/sims/html/waves-intro/latest/waves-intro_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana L�pez Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts',33,5),
		(35,'Espectro do Corpo Negro', '<iframe src="https://phet.colorado.edu/sims/html/blackbody-spectrum/latest/blackbody-spectrum_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Arnab Purkayastha (developer)
			Saurabh Totey (developer)
			Martin Veillette (developer)
			Diana L�pez Tavares (lead designer)
			Michael Dubson (original designer)
			Wendy Adams
			John Blanco
			Ariel Paul
			Kathy Perkins',31,5),
		(36,'Interfer�ncia de Onda', '<iframe src="https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana L�pez Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts',34,5),
		(37,'Luz de Curvatura', '<iframe src="https://phet.colorado.edu/sims/html/bending-light/latest/bending-light_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
			Sam Reid (developer)
			Noah Podolefsky
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',35,5),
		(38,'Mol�culas e Luz', '<iframe src="https://phet.colorado.edu/sims/html/molecules-and-light/latest/molecules-and-light_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
			Jesse Greenberg (developer)
			John Blanco (developer)
			Sam Reid (developer)
			Aaron Davis (developer)
			Kelly Lancaster
			Yuen-ying Carpenter
			Patricia Loeblein
			Emily B. Moore
			Robert Parson
			Ariel Paul
			Kathy Perkins
			Alex Klinger (graphic arts)',36,5),
		(39,'Percep��o de cor', '<iframe src="https://phet.colorado.edu/sims/html/color-vision/latest/color-vision_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Bryce Gruneich (lead)
			Kathy Perkins (lead)
			Aaron Davis (developer)
			Ron LeMaster (developer)
			Chris Malley (developer)
			Sam Reid (developer)
			Wendy Adams
			Danielle Harlow
			Ariel Paul
			Carl Wieman
			Mike Fowler (graphic arts)',37,5),
		(40,'Lei de Coulomb', '<iframe src="https://phet.colorado.edu/sims/html/coulombs-law/latest/coulombs-law_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Barlow (lead developer)
			Jesse Greenberg (developer)
			Amy Rouinfar (lead designer)
			Amy Hanson
			Ariel Paul
			Kathy Perkins
			Mariah Hermsmeyer (graphic arts)
			Cheryl McCutchan (graphic arts)',38,6),
		(41,'Laborat�rio do Capacitor: B�sico', '<iframe src="https://phet.colorado.edu/sims/html/capacitor-lab-basics/latest/capacitor-lab-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Andrew Adare (developer)
			Jesse Greenberg (developer)
			Chris Malley (developer)
			Jonathan Olson (developer)
			Emily Randall (developer)
			Emily Moore
			Ariel Paul
			Kathy Perkins',39,6),
		(42,'Kit de Constru��o de Circuitos: DC - Virtual Lab', '<iframe src="https://phet.colorado.edu/sims/html/circuit-construction-kit-dc-virtual-lab/latest/circuit-construction-kit-dc-virtual-lab_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Sam Reid (developer)
			Denzell Barnett (developer)
			Wendy Adams
			Michael Dubson
			Ariel Paul
			Kathy Perkins
			Carl Wieman
			Mariah Hermsmeyer (graphic arts)
			Cheryl McCutchan (graphic arts)',40,6),
		(43,'Kit de Constru��o de Circuitos: DC', '<iframe src="https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Sam Reid (developer)
			Denzell Barnett (developer)
			Wendy Adams
			Michael Dubson
			Ariel Paul
			Kathy Perkins
			Carl Wieman
			Mariah Hermsmeyer (graphic arts)
			Cheryl McCutchan (graphic arts)',41,6),
		(44,'Cargas e Campos', '<iframe src="https://phet.colorado.edu/sims/html/charges-and-fields/latest/charges-and-fields_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer - HTML5)
			Michael Dubson (lead designer/developer - Flash)
			Andrew Adare (developer)
			Martin Veillette (developer)
			Ariel Paul
			Kathy Perkins',42,6),
		(45,'Bal�es e Eletricidade Est�tica', '<iframe src="https://phet.colorado.edu/sims/html/balloons-and-static-electricity/latest/balloons-and-static-electricity_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Sam Reid (lead, developer)
			Ariel Paul
			Kathy Perkins
			Patricia Loeblein
			Sharon Siman-Tov
			Wendy Adams (interviewer)',43,6),
		(46,'Lei de Faraday', '<iframe src="https://phet.colorado.edu/sims/html/faradays-law/latest/faradays-law_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Dubson (lead)
			Bryce Gruneich (lead)
			John Blanco (developer)
			Jonathan Olson (developer)
			Ariel Paul
			Kathy Perkins
			Amy Rouinfar',44,6),
		(47,'Travoltagem', '<iframe src="https://phet.colorado.edu/sims/html/john-travoltage/latest/john-travoltage_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Carl Wieman (lead)
			Sam Reid (lead, developer)
			Ariel Paul
			Kathy Perkins
			Patricia Loeblein
			Sharon Siman-Tov
			Wendy Adams (interviewer)',45,6),
		(48,'Lei de Ohm', '<iframe src="https://phet.colorado.edu/sims/html/ohms-law/latest/ohms-law_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Dubson (lead, developer)
			John Blanco (developer)
			Ariel Paul
			Mindy Gratny (interviewer',46,6),
		(49,'Resist�ncia num condutor', '<iframe src="https://phet.colorado.edu/sims/html/resistance-in-a-wire/latest/resistance-in-a-wire_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Dubson (lead, developer)
			John Blanco (developer)
			Ariel Paul
			Wendy Adams (interviewer)
			Mindy Gratny (interviewer)',47,6);




INSERT INTO Questionario(Codigo_Questionario, Codigo_Materia)
	VALUES
		(0,0),
		(1,0),
		(2,1),
		(3,2),
		(4,3),
		(5,4),
		(6,5),
		(7,6);

INSERT INTO Questao(Codigo_Questionario, Codigo_Questao, Descricao_Pergunta, Descricao_Resposta_Correta, Descricao_Resposta_Incorreta_1, Descricao_Resposta_Incorreta_2, Descricao_Resposta_Incorreta_3)
	VALUES
		(0, 0,'Uma pessoa possui, na superf�cie da Terra, ao n�vel do mar, uma massa de 48 kg. Sabendo-se que a acelera��o da gravidade na superf�cie da Lua � cerca de seis vezes menor que na superf�cie da Terra, ao n�vel do mar, podemos afirmar, com rela��o a essa pessoa, que:', 'Seu peso, na superf�cie na Lua, � aproximadamente 8 Kg/F', 'Seu peso, na superf�cie na Lua, � aproximadamente 48 Kg/F', 'Sua massa, na superf�cie na Lua, � aproximadamente 384 Kg/F', 'Seu peso � o mesmo, tanto na superf�cie da Lua, quanto na superf�cie da Terra, ao n�vel do mar'),
		(0, 1,'Uma part�cula de massa igual a 10 kg � submetida a duas for�as perpendiculares entre si, cujos m�dulos s�o 3,0N e 4,0N. Pode-se afirmar que o m�dulo de sua acelera��o � em m/s ao quadrado:', '0,5', '5,0', '0,7', '7,0'),
		(0, 2,'Um menino pesa 400 N na superf�cie da Terra, onde se adota g = 10 m/s2. Se o menino fosse transportado para uma nave, onde a acelera��o da gravidade � quatro vezes menor, a sua massa e seu peso seriam, respectivamente:', '40 Kg e 100 N', '40 Kg e 200N', '20 Kg e 200 N', '20 Kg e 400N'),
		(0, 3,'Um bloco exige uma for�a F1 para ser posto em movimento, vencendo a for�a de atrito est�tico. Corta-se o bloco ao meio, colocando uma metade sobre a outra. Se agora F2 a for�a necess�ria para p�r o conjunto em moimento. Sobre a rela��o F2/F1, pode-se afirmar que:', 'Ela � igual a 1', 'Ela � igual a 2', 'Ela � igual a 1/2', 'Seu valor depende de sua superf�cie'),
		(0, 4,'Um corpo de massa igual a 10 kg desliza, em Movimento Uniforme Uniforme, sobre uma mesa horizontal, sob a a��o de uma for�a horizontal de m�dulo 10 N. Considere a acelera��o gravitacional com m�dulo g = 10 m/s2, o coeficiente de atrito entre o corpo e a mesa �:', '0,1', '10', '1', '0'),
		(0, 5,'Numa alavanca, Fr = 300N, Br = 1m, Bp = 2m. Sabendo que a alavanca est� em equil�brio e que o peso da barra � desprez�vel determine a Fp. (considere: Fr = for�a resistente, Br = bra�o da for�a resistente, Fp = for�a potente, Bp = bra�o da for�a potente)', '150 N', '300 N', '600 N', '450 N'),
		(0, 6,'Uma roldana m�vel Rm, est� presa a uma roldana fixa Rf e o sistema est� em repouso. Considere as massas das cordas, das roldanas e das for�as de atrito desprez�veis. Se na roldana m�vel coloca-se um bloco de massa m1 e na roldana fixa coloca-se um bloco id�ntico de massa m2, a rela��o entre as massas dos blocos m1 e m2 �:', 'm1 = 2(m2)', 'm1 = m2', 'm1 = 3(m2)', 'm1 = (m2)/2'),
		(0, 7,'Quando estamos viajando de �nibus e o mesmo freia bruscamente, nossos corpos s�o arremessados para frente. Esta situa��o se explica pela 1� Lei de Newton que �:', 'Propriedade geral da mat�ria denominada In�rcia', 'Princ�pio fundamental da din�mica', 'Princ�pio da A��o e Rea��o', 'Princ�pio da conserva��o da Energia Mec�nica'),
		(0, 8,'Um elevador de peso igual a 8.000 N parte do repouso e sobe verticalmente 50 m em 5 s, em movimento uniformemente acelerado. Desprezando-se as for�as dissipativas e as massas dos cabos de sustenta��o e sabendo-se que a acelera��o gravitacional local � igual a 10 m/s2 , a pot�ncia, em kW, solicitada � igual a', '112', '100', '64', '80'),
		(0, 9,'Dois blocos de massas  respectivamente, s�o abandonados, a partir do repouso, de uma altura h, em rela��o ao solo, ligados por um cabo de massa desprez�vel, conforme figura acima. Considerando que os corpos caem em queda livre, qual o m�dulo de tens�o no cabo?', 'T = 0', 'T = m2.g', 'T = (m2-m1).g', 'T = (m2+m1).g'),
		(1, 0,'Para estudar impulso e quantidade de movimento, alguns estudantes s�o convidados a fazer um experimento no qual dever�o atirar um proj�til, cuja ponta � feita de um material que se fixa ao objeto a ser acertado. O objeto de 200 g encontra-se em repouso sobre uma superf�cie lisa e, ao ser atingido pelo proj�til, cuja massa � de 40 g, passa a se deslocar com uma velocidade de 2 m/s. Desprezando os atritos, pode-se afirmar que a velocidade com que o proj�til atingiu o objeto foi de:', '43,2km/h', '12,0km/h', '7,2m/s', '10,0m/s'),
		(1, 1,'Um estudante tem um pai apaixonado por carros antigos e que sempre comparece a eventos em que alguns desses ve�culos s�o expostos. Em uma oportunidade de acompanhar seu pai, o estudante percebe que tais ve�culos possuem uma lataria muito mais resistente que a dos carros atuais. Isso se deve principalmente por causa da:', 'seguran�a dos passageiros, uma vez que ao reduzir a resist�ncia do material, em uma colis�o, o tempo de impacto aumenta, reduzindo a for�a aplicada.', 'economia das montadoras de ve�culos, que diminuem a resist�ncia deles, prejudicando assim os compradores atuais de ve�culos, quando em compara��o com os carros antigos.', 'sustentabilidade, uma vez que quanto mais grossas as pe�as utilizadas nos ve�culos maior ser� a degrada��o do ambiente e a dificuldade de descartar os materiais.', 'melhoria da aerodin�mica do ve�culo, uma vez que as pe�as mais fr�geis aumentam a for�a de empuxo e a sustenta��o sobre ele.'),
		(1, 2,'Um ciclista, em velocidade constante, gastou 3 horas para percorrer um trajeto de 16 km. Quanto tempo esse ciclista gastou para fazer os primeiros 12 km desse trajeto?', '2 horas e 15 minutos.', '2 horas e 25 minutos.', '1 hora e 45 minutos.', '2 horas e 5 minutos.'),
		(1, 3,'Tr�s amigos re�nem-se num mesmo local e, dispondo de uma bicicleta que pode levar somente duas pessoas de cada vez, precisam chegar ao centro de estudos da UFF o mais r�pido poss�vel. O amigo A leva o amigo B, de bicicleta, at� um ponto x do percurso e retorna para apanhar o amigo C, que vinha caminhando ao seu encontro. O amigo B, a partir de x, continua a p� sua viagem rumo ao centro de estudos da UFF. Os tr�s chegam simultaneamente ao centro de estudos da UFF. A velocidade m�dia como pedestre � V1 e vale 3 km/h, enquanto que como ciclista � V2 e vale 15 km/h. A velocidade m�dia com que os amigos far�o o percurso total ser�:', '7,5Km/h', '4,5Km/h', '9Km/h', '12Km/h'),
		(1, 4,'Na rodovia BR-040, que liga Rio de Janeiro a Bras�lia, uma cegonheira (caminh�o que transporta outros carros) faz uma ultrapassagem que leva 6 segundos com velocidade constante em rela��o a outra cegonheira de mesmas dimens�es, cuja velocidade tamb�m � constante. Cada ve�culo tem 12 metros de comprimento. Qual seria a diferen�a de velocidades entre as cegonheiras?', '4m/s', '2m/s', '3m/s', '1m/s'),
		(1, 5,'Um m�vel se desloca em uma trajet�ria retil�nea, mantendo velocidade escalar constante de 108 km/h. A velocidade desse m�vel, em unidades do Sistema Internacional (SI), vale', '100', '250', '360', '500'),
		(1, 6,'A f�sica cl�ssica mostra que velocidade instant�nea de um objeto no instante t � o limite das velocidades', 'm�dias do objeto calculadas em intervalos de tempo cada vez menores, contendo t.', 'maiores do objeto calculadas em intervalos de tempo cada vez maiores, contendo t.', 'm�dias do objeto calculadas em intervalos de tempo cada vez maiores, contendo t.', 'm�dias do objeto calculadas em um determinado intervalo de tempo t.'),
		(1, 7,'Um corpo efetua um movimento retil�neo obedecendo � fun��o hor�ria: 
		       S(t) = 5 (m/s2 ) t2 + 4 (m), onde t � dado em segundos. 
		       Considerando que esse corpo possui uma massa de 5 Kg qual � o valor da for�a aplicada ao movimento desse corpo? ', '50N', '20N', '12,5N', '25N'),
		(1, 8,'Considere as quatro afirma��es seguintes.
	I. No MRUV, a velocidade varia linearmente com o tempo.
	II. Um carro em marcha � r� n�o pode realizar movimento acelerado.
	III. O coeficiente angular da reta que voc� obt�m ao construir o gr�fico da velocidade x tempo fornece a velocidade inicial do m�vel.
	IV. Pode-se determinar a velocidade de um m�vel no MRUV, sem conhecer o tempo de percurso do m�vel.
Das afirma��es apresentadas, s�o verdadeiras', 'I e IV, apenas.', 'I e III, apenas.', 'I e II, apenas.', 'III e IV, apenas.'),
		(1, 9,'Podemos dizer que uma part�cula se encontra em movimento quando suas posi��es sofrem altera��es no decorrer do tempo em rela��o a um dado referencial. Estando em movimento, ainda podemos dizer que a part�cula pode estar em movimento uniforme ou em movimento variado. Acerca de um sat�lite geoestacion�rio que se encontra sobre a linha do equador terrestre, podemos afirmar corretamente que', 'a acelera��o tangencial � nula e a acelera��o centr�peta depender� da altitude que se encontrar em rela��o � superf�cie da Terra.', 'a acelera��o vetorial desse sat�lite n�o pode ser nula pois o sat�lite dever� possuir velocidade tangencial muito grande.', 'possui acelera��o escalar constante e diferente de zero.', 'sua acelera��o resultante � a pr�pria acelera��o tangencial.'),
		(2, 0,'Um homem adulto conversa com outro de modo amistoso e sem elevar o n�vel sonoro de sua voz. Enquanto isso, duas crian�as brincam emitindo gritos euf�ricos, pois a brincadeira � um jogo interessante para elas. O que distingue os sons emitidos pelo homem dos emitidos pelas crian�as', 's�o a altura, a intensidade e o timbre.', 's�o a intensidade e o timbre, apenas.', 's�o a altura e a intensidade, apenas.', '� a intensidade, apenas.'),
		(2, 1,'A cu�ca � um instrumento musical, semelhante a um tambor, com uma haste de madeira presa no centro de uma membrana de couro, pelo lado interno. Friccionando a haste com um peda�o de tecido molhado e pressionando a parte externa da cu�ca com o dedo, produz-se uma onda sonora de ronco caracter�stico. Quando essa onda sonora propaga-se,', 'h� propaga��o de energia.', 'h� transporte de mat�ria.', 'sua amplitude aumenta.', 'aumenta a sua frequ�ncia.'),
		(2, 2,'Marque a alternativa correta a respeito das caracter�sticas das ondas sonoras.', 'O aparelho auditivo humano � capaz de captar apenas um intervalo espec�fico de frequ�ncias sonoras.', 'Um som alto significa um som de alto volume.', 'Quanto menor for a densidade de um meio, maior ser� a velocidade do som, por isso as ondas sonoras propagam-se com maior velocidade no ar do que na �gua.', 'A altura � a qualidade do som relacionada � energia emitida pela fonte sonora.'),
		(2, 3,'Determinada fonte produz ondas no ar com comprimento de onda igual a 2 mm. Assinale a alternativa que traz a informa��o correta a respeito dessas ondas. Dados: Se necess�rio, adote a velocidade de propaga��o das ondas sonoras atrav�s do ar como sendo igual a 340 m/s.', 'As ondas sonoras s�o inaud�veis, pois o comprimento de onda � maior que a largura do t�mpano.', 'As ondas sonoras s�o inaud�veis, pois possuem frequ�ncia abaixo do valor m�nimo percept�vel pelo ouvido humano.', 'As ondas sonoras s�o aud�veis para o ser humano.', 'As ondas sonoras s�o inaud�veis, pois possuem frequ�ncia acima do valor m�ximo percept�vel pelo ouvido humano.'),
		(2, 4,'Numa enferm�ria,o soro fornecido a um paciente goteja a raz�o de 30 gotas por minuto.Qual � o per�odo e a frequ�ncia m�dia do gotejamento respectivamente?', '2,0 s e 0,50 Hz', '0,5 s e 3 Hz', '1,0 s e 0,25 Hz', '0,25 s e 4 Hz'),
		(2, 5,'Uma piscina tem fundo plano horizontal.Uma onda eletromagn�tica de Frequ�ncia 100 MHz vinda de um sat�lite,incide perpendicularmente sobre a piscina e � parcialmente refletida pela superf�cie da �gua e pelo fundo da piscina.Suponhando que,para essa frequ�ncia a velocidade da luz na �gua seja de 4,0*10 elevado a 4 m/s.Qual � o comprimento de onda da �gua?', '4,0*10 elevado a -1', '4,0*10 elevado a 3', '4,0*10 elevado a -2', '4,0*10 elevado a 5'),
		(2, 6,'Um menino,balan�ando em uma corda dependurada em uma �rvore,faz 30 oscila��es em 1 minuto.Pode-se afirmar que seu movimento tem:', 'Um per�odo de 2,0 s', 'Uma frequ�ncia de 15 Hz', 'Um periodo de 3,0 s', 'Uma frequ�ncia de 3 Hz'),
		(2, 7,'Uma onda peri�dica transversal se propaga numa mola,onde cada ponto executa uma oscila��o completa a cada 0,20 s.Sabendo-se que a dist�ncia entre duas cristas sucessival � 30cm,pode-se concluir que a velocidade de propaga��o dessa onda,em m/s,�:', '0,15', '3,0', '1,5', '0,85'),
		(2, 8,'Um n�vio de pesquisa com um sonar,emite ultrassons em dire��o ao fundo do mar.Microfones especiais no casco recebem o eco ap�s 0,4s.Sabendo-se que o som se propaga na �gua do mar a uma velocidade de 1500 m/s.Qual � a profundidade do local?', '300m', '150m', '700m', '3750m'),
		(2, 9,'Quando, em uma regi�o plana e distante de obst�culos, se ouve o som de um avi�o voando, parece que esse som vem de uma dire��o diferente daquela em que, no mesmo instante, se enxerga o avi�o. Considerando-se essa situa��o, � CORRETO afirmar que isso ocorre porque:', 'A velocidade do som � menor que a velocidade da luz no ar.', 'A velocidade do avi�o � menor que a velocidade do som no ar.', 'A velocidade do avi�o � maior que a velocidade do som no ar.', 'O som � uma onda longitudinal e a luz uma onda transversal.'),
		(3, 0,'Uma bola de chumbo de 3kg � lan�ada a partir do solo verticalmente para cima com velocidade de 40m/s. Qual o valor da Energia Cin�tica no instante de lan�amento?', '2.400 J', '240 J', '4.800 J', '120 J'),
		(3, 1,'Qual a altura que uma bola ir� alcan�ar sendo que sua energia potencial gravitacional � de 1.200 J, massa = 5kg e gravidade = 10 m/s2?', '24 m', '20 m', '22 m', '12 m'),
		(3, 2,'Calcule a Energia Mec�nica se a massa for igual a 10kg e velocidade de 6m/s, sendo a altura de 8m e gravidade 10. A Energia Mec�nica �:', '980 J', '970 J', '900 J', '485 J'),
		(3, 3,'Se uma bola est� em repouso no ch�o e a sua massa � igual a 7kg e considerando a for�a da graavidade igual � 10m/s2, qual � a sua Energia?', '0 J', '7 J', '10 J', '70 J'),
		(3, 4,'Qual � a for�a que um pedreiro tem que fazer para carregar 80 kg de terra com a ajuda de um carrinho de m�o que possui 1,20 metro de comprimento? Sabendo que a dist�ncia entre o centro de gravidade do volume de terra at� o centro da roda do carrinho � 60 cm.', '40KgF', '100KgF', '80KgF', '50KgF'),
		(3, 5,'Qual o valor da for�a que uma pessoa deve fazer para manter o corpo de 160N em equilibrio usando 4 roldanas m�veis e 1 roldana fixa?', '10', '20', '85', '80'),
		(3, 6,'Qual � a pot�ncia de umm motor de um carrinho de brinquedo capaz de realizar um trabalho de 1200 J em 2 minutos?', '600W', '2400W', '800W', '1800W'),
		(3, 7,'Uma bola de 2 kg cai de uma superficie,percorrendo 5 m em 2 s. Qual � o trabalho da bola e a pot�ncia da bola nesse intervalo de tempo respectivamente? (Considere G=10 m/s)', '100J e 50W', '200J e 100W', '100J e 125W', '200J e 50W'),
		(3, 8,'A usina de Itaipu � uma das maiores hidrel�tricas do mundo em gera��o de energia. Com 20 unidades geradoras e 14 000 MW de pot�ncia total instalada, ela apresenta uma queda de 118,4 m e vaz�o nominal de 690 m3/s por unidade geradora. O c�lculo da pot�ncia te�rica leva em conta a altura da massa de �gua represada pela barragem, a gravidade local (10 m/s2) e a densidade da �gua (1 000 kg/m3). A diferen�a entre a pot�ncia te�rica e a instalada � a pot�ncia n�o aproveitada. 
		Qual � a pot�ncia, em MW, n�o aproveitada em cada unidade geradora de Itaipu?', '116,96', '13.183,04', ' 816,96', '0'),
		(3, 9,'Um objeto de 200 kg � acelerado a 4 m/s2 sob a��o de uma for�a F. Determine a dist�ncia deslocada pelo objeto sob a��o dessa for�a sabendo que a energia transferida para ele foi de 9,6 kJ.', '12 m', '10 m', '8 m', '14 m'),
		(4, 0,'Para aquecer 500 g de certa subst�ncia de 20 �C para 70 �C, foram necess�rias 4 000 calorias. A capacidade t�rmica e o calor espec�fico valem respectivamente:', '80 cal/ �C e 0,16 cal/g. �C', '90 cal/ �C e 0,09 cal/g. �C', '8 cal/ �C e 0,08 cal/g .�C', '120 cal/ �C e 0,12 cal/g. �C'),
		(4, 1,'Em uma manh� de c�u azul, um banhista na praia observa que a areia est� muito quente e a �gua do mar est� muito fria. � noite, esse mesmo banhista observa que a areia da praia est� fira e a �gua do mar est� morna. O fen�meno observado deve-se ao fato de que:', 'o calor espec�fico da areia � menor que o calor espec�fico da �gua.', 'a densidade da �gua do mar � menor que a da areia.', 'o calor contido na areia, � noite, propaga-se para a �gua do mar.', 'o coeficiente de dilata��o t�rmica da �gua � maior que o coeficiente de dilata��o t�rmica da areia.'),
		(4, 2,'Um amolador de facas, ao operar um esmeril, � atingido por fagulhas incandescentes, mas n�o se queima. Isso acontece porque as fagulhas:', 'tem capacidade t�rmica muito pequena.', 'tem temperatura muito baixa.', 'tem calor espec�fico muito grande.', 'est�o em mudan�a de estado.'),
		(4, 3,'Dentro de uma sala com ar condicionado, a temperatura m�dia � de 17 �C. No corredor ao lado da sala, a temperatura m�dia � 27 �C. Tanto a sala quanto o corredor est�o a mesma press�o. Sabe-se que num g�s, a energia cin�tica m�dia das part�culas que o comp�em � proporcional � temperatura e que sua press�o � proporcional ao produto da temperatura pelo n�mero de part�culas por unidade de volume.
Com base nesses dados, pode-se afirmar que:', 'A energia cin�tica m�dia das part�culas que comp�em o ar � maior no corredor, e o n�mero de part�culas por unidade de volume � maior na sala.', 'a energia cin�tica m�dia das part�culas que comp�em o ar � maior no corredor, e o n�mero de part�culas por unidade de volume � menor na sala.', 'A energia cin�tica m�dia das part�culas que comp�em o ar � maior na sala, e o n�mero de part�culas por unidade de volume � menor no corredor.', 'A energia cin�tica m�dia das part�culas que comp�em o ar � maior na sala, e o n�mero de part�culas por unidade de volume � maior no corredor.'),
		(4, 4,'Considere uma mistura de gases H2  e N2 , em equil�brio t�rmico. Sobre a energia cin�tica m�dia e sobre a velocidade m�dia das mol�culas de cada g�s, pode-se concluir que:', 'Ambas tem a mesma energia cin�tica m�dia, mas as mol�culas de H2 tem maior velocidade m�dia.', 'as mol�culas de H2  e N2  tem a mesma energia cin�tica m�dia e a mesma velocidade m�dia.', 'Ambas tem a mesma velocidade m�dia, mas as mol�culas de H2 tem maior energia cin�tica m�dia.', 'Ambas tem a mesma energia cin�tica m�dia, mas as mol�culas de N2 tem maior velocidade m�dia.'),
		(4, 5,'Qual � o a sub divis�o da f�sica que estuda os fen�menos t�rmicos?', 'Termodin�mica', 'Cinem�tica', 'Din�mica', 'Hidrost�tica'),
		(4, 6,'Se um objeto e aquecido, o que acontece com suas mol�culas?', 'Ficam mais agitadas e distantes umas das outras', 'Ficam menos agitadas e mais pr�ximas umas das outras', 'Ficam menos agitadas e distantes umas das outras', 'N�o acontece nada'),
		(4, 7,'Quando realmente podemos falar em calor?', 'Quando h� diferen�a entres as temperaturas entre dois corpos', 'Quando a temperatura entre dois corpos s�o iguais', 'Quando estamos numa sala fechada e refrigerada e tocamos num objeto de metal.', 'Quando estamos expostos por um grande tempo sobre o sol num dia quente'),
		(4, 8,'Qual e a escala Absoluta?', 'Escala Kelvin', 'Escala Celsius', 'Escala Fahrenheit', 'Escala R�aumur'),
		(4, 9,'Numa transforma��o gasosa revers�vel, a varia��o da energia interna � de +300J. Houve compress�o e o trabalho realizado pela for�a de press�o do g�s �, em m�dulo, 200J. Ent�o, podemos afirmar que o g�s:', 'recebeu 500J de calor do meio', 'recebeu 100J de calor do meio', 'cedeu 100J de calor ao meio', 'sofreu uma transforma��o adiab�tica'),
		(5, 0,'O el�tron e sua antipart�cula, o p�sitron, possuem massas iguais e cargas opostas. Em uma rea��o em que o el�tron e o p�sitron, em repouso, se aniquilam, dois f�tons de mesma energia s�o emitidos em sentidos opostos. A energia de cada f�ton produzido �, em MeV, aproximadamente:', '0,5', '0,8', '1,6', '3,2'),
		(5, 1,'Um astronauta, em sua nave espacial, est� em repouso em rela��o a uma estrela que emite luz com uma determinada frequ�ncia natural. Subitamente, o astronauta acelera a sua nave em dire��o � estrela at� alcan�ar uma velocidade suficientemente alta para que a luz emitida pela estrela e observada pelo astronauta tenha uma nova frequ�ncia, ligeiramente diferente da sua frequ�ncia natural. Qual � o nome do fen�meno descrito anteriormente?', 'Efeito Doppler Relativ�stico', 'Efeito Fotoel�trico', 'Efeito Compton', 'Efeito Hall'),
		(5, 2,'Qual das alternativas a seguir n�o corresponde a um dos postulados de Bohr?', 'O el�tron apresenta um comportamento dual, ou seja, comporta-se ora como onda, ora como part�cula.', 'O el�tron n�o pode estar em qualquer estado, somente em estados permitidos, denominados estacion�rios.', 'O el�tron executa um movimento circular e uniforme em torno do n�cleo.', 'O momento angular do el�tron em torno do n�cleo � quantizado.'),
		(5, 3,'Uma r�gua de 15 cent�metros est� presa horizontalmente no interior de um vag�o que se move com 60% da velocidade da luz no v�cuo em rela��o ao solo. Qual � o comprimento dessa mesma r�gua para um observador fixo no solo que observa o movimento do vag�o?', '12 cm', '15 cm', '9 cm', '25 cm'),
		(5, 4,'Dois amigos resolvem fazer uma experi�ncia. Um deles entra em uma nave espacial e acelera at� alcan�ar uma velocidade pr�xima da velocidade da luz no v�cuo, enquanto o outro permanece em repouso em rela��o � Terra, local de onde parte a nave. Os dois amigos possuem, cada um, um rel�gio em m�os, de forma que os dois rel�gios est�o perfeitamente sincronizados no momento da partida da nave. Ap�s o retorno da nave ao planeta, considerando-se que os rel�gios contabilizam a passagem dos dias, como estar� o rel�gio de quem estava nela, em rela��o ao rel�gio de quem estava na Terra?', 'Estar� atrasado.', 'Estar� adiantado.', 'Estar� com os ponteiros quebrados.', 'Estar� perfeitamente sincronizado, como antes.'),
		(5, 5,'Qual das alternativas a seguir apresenta um invariante relativ�stico?', 'Carga el�trica.', 'Tempo', 'Espa�o', 'Energia'),
		(5, 6,'Sabendo-se que a velocidade da luz no v�cuo � de 300 milh�es de metros por segundo, se um corpo, com massa de repouso de 10 kg, inicialmente em repouso sobre uma superf�cie plana e sem atrito, for acelerado e adquirir movimento retil�neo at� alcan�ar uma velocidade correspondente a 80% da velocidade da luz no v�cuo, qual ser� o valor da energia cin�tica adquirida por esse corpo?', '2000 MJ', '20 MJ', '20 GJ', '200 J'),
		(5, 7,'Qual das alternativas abaixo apresenta o fen�meno estudado por Albert Einstein que lhe rendeu o Pr�mio Nobel de F�sica?', 'Efeito fotoel�trico.', 'Relatividade restrita.', 'Movimento browniano.', 'Efeito Compton.'),
		(5, 8,'Sabendo-se que uma determinada placa met�lica possui fun��o trabalho de 5 eV, e considerando-se o valor da constante de Planck como sendo 4 feV, ao se incidir sobre essa placa uma luz monocrom�tica com frequ�ncia de 600 THz, qual ser� o valor da energia cin�tica m�xima atingida pelos el�trons ejetados da placa?', 'N�o haver� eje��o de el�trons da placa met�lica.', '1000 eV', '500 eV', '10 eV'),
		(5, 9,'Qual era o objetivo da famosa experi�ncia de Michelson e Morley?', 'Comprovar experimentalmente a exist�ncia do �ter, suposto meio para propaga��o de ondas eletromagn�ticas.', 'Provar experimentalmente a veracidade dos postulados da relatividade restrita, de Einstein.', 'Demonstrar experimentalmente o fen�meno do efeito Doppler relativ�stico.', 'Determinar experimentalmente a express�o para o fator de Lorentz.'),
		(6, 0,'Relacione as radia��es naturais alfa, beta e gama com suas respectivas caracter�sticas:
		1. alfa (a);
		2. beta (B);
		3. gama (Y).
		
		� Possuem alto poder de penetra��o, podendo causar danos irrepar�veis ao ser humano;
		� S�o part�culas leves, com carga el�trica negativa e massa desprez�vel;
		� S�o radia��es eletromagn�ticas semelhantes aos raios X, n�o possuem carga el�trica nem massa;
		� S�o part�culas pesadas de carga el�trica positiva que, ao incidirem sobre o corpo humano, causam apenas queimaduras leves.
		A sequ�ncia correta, de cima para baixo, �:', 'I, III e IV, apenas.', 'I, II, e III, apenas.', 'II, III e IV, apenas.', 'II, IV e V, apenas.'),
		(6, 1,'Quantas part�culas alfa e quantas part�culas beta precisam ser emitidas para transformar um ur�nio-238 (23892U) em r�dio (22688Ra):', '3 part�culas alfa e 2 part�culas beta.', '4 part�culas alfa e 3 part�culas beta.', '3 part�culas alfa e 3 part�culas beta.', '1 part�cula alfa e 2 part�culas beta.'),
		(6, 2,'Todos os dias ficamos expostos a v�rios tipos de radia��es. Seja numa cl�nica para se realizar um exame com raios X ou simplesmente andando pelas ruas, nosso organismo � constantemente bombardeado por elas. Marque a alternativa que apresenta a radia��o de maior penetra��o no organismo humano.', 'Raios gama', 'Luz vis�vel', 'Infravermelho', 'Ultravioleta'),
		(6, 3,'Os raios X s�o produzidos em tubos de vidro a v�cuo, nos quais el�trons sofrem uma brusca desacelera��o quando colidem contra um alvo feito de metal. Desta forma podemos dizer que os raios X constituem um feixe de:', 'f�tons', 'pr�tons', 'el�trons', 'p�sitrons'),
		(6, 4,'Uma amostra de 128g de um radiois�topo sofreu desintegra��o e sobraram apenas 2g. Sabendo que sua meia-vida � de 30 minutos, quanto tempo se passou?', '3 horas', '3 horas e 30 min', '2 horas e 30 min', '4 horas'),
		(6, 5,'O elemento radioativo natural 90 Th 232 , ap�s uma s�rie de emiss�es alfa e beta, isto �, por decaimento radioativo, converte-se em um is�topo n�o-radioativo, est�vel, do elemento chumbo, 82 Pb 208. O n�mero de part�culas alfa e beta, emitidas ap�s o processo, �, respectivamente, de:', '6 e 4.', '5 e 5.', '6 e 5.', '5 e 2.'),
		(6, 6,'A meia-vida de um determinado is�topo radioativo de massa molar 60g/mol � igual a 70s. A atividade de uma amostra radioativa contendo 60mg do referido is�topo �: (atividade medida em desintegra��es por segundo)', '6,02 x 10 elevado a 18', '6,02 x 10 elevado a 19', '6,02 x 10 elevado a 22', '6,02 x 10 elevado a 23'),
		(6, 7,'Marque a alternativa correta a respeito dos fen�menos da reflex�o, refra��o e absor��o da luz.', 'Todas as alternativas anteriores est�o incorretas.', 'As leis da reflex�o se aplicam tanto � reflex�o regular quanto � reflex�o difusa.', 'A reflex�o de um espelho plano � difusa.', 'Um �nico raio de luz incidente n�o pode sofrer os tr�s fen�menos �pticos ao mesmo tempo.'),
		(6, 8,'Ao observar o asfalto em dias quentes podemos perceber a forma��o de imagens que aparentam po�as d��gua. Marque a alternativa que apresenta o nome dado a este evento e o fen�meno �ptico envolvido em sua ocorr�ncia.', 'Miragens, refra��o da luz', 'Miragens, reflex�o da luz', 'Miragens, absor��o da luz.', 'Difra��o, reflex�o da luz'),
		(6, 9,'Anne Marie, modelo profissional, costuma fazer ensaios fotogr�ficos e participar de desfiles de moda. Em trabalho recente, ela usou um vestido que apresentava cor vermelha quando iluminado pela luz do sol. Anne Marie ir� desfilar novamente usando o mesmo vestido. Sabendo que a passarela onde ela vai desfilar ser� iluminada agora com luz monocrom�tica verde, podemos afirmar que o p�blico perceber� seu vestido como sendo:', 'Preto, porque o vestido s� reflete a cor vermelha.', 'De cor entre vermelha e verde devido � mistura das cores.', 'Vermelho, pois a cor do vestido independe da radia��o incidente.', 'Verde, pois � a cor que incidiu sobre o vestido.'),
		(7, 0,'Comumente se ouve falar dos perigos da alta voltagem em dispositivos el�tricos. Todavia, uma alta voltagem pode n�o significar uma grande quantidade de energia se', 'a quantidade de carga envolvida for baixa.', 'o campo el�trico envolvido for uniforme.', 'a for�a el�trica envolvida for baixa.', 'o potencial el�trico envolvido for constante.'),
		(7, 1,'Em uma resid�ncia onde moram quatro pessoas h� um chuveiro de pot�ncia 6 kW. Sabendo que cada morador toma dois banhos por dia de aproximadamente 10 min cada e que o chuveiro sempre permanece na posi��o inverno, determine a energia consumida pelo equipamento em kWh ao fim de 1 m�s.', '240', '120', '480', '100'),
		(7, 2,'A respeito da gera��o de energia el�trica por meio das hidroel�tricas, marque a alternativa correta.', 'A �gua gira as turbinas para que, por meio do fen�meno da indu��o eletromagn�tica, a energia el�trica possa ser gerada.', 'Quanto mais alta for a barragem da hidroel�trica, menor ser� a energia potencial gravitacional e maior ser� a velocidade dada � �gua para girar as turbinas.', 'No Brasil, as �nicas formas de gera��o de energia s�o as hidroel�tricas e as termoel�tricas.', 'A �gua deve ser armazenada o mais distante poss�vel das turbinas para que possa existir a possibilidade de alta velocidade com for�a suficiente para girar as turbinas.'),
		(7, 3,'Pela sec��o reta de um condutor de eletricidade passam 12,0 C a cada minuto. Nesse condutor, a intensidade da corrente el�trica, em amp�res, � igual a:', '0,20', '120', '0,08', '7,20'),
		(7, 4,'Um pequeno �m� � colocado nas proximidades de uma barra de ferro. Sobre a situa��o descrita, assinale a alternativa correta.', 'O �m� atrai a barra de ferro com a mesma intensidade que a barra de ferro atrai o �m�.', 'A for�a que o �m� exerce sobre a barra de ferro � maior que a for�a que o ferro exerce sobre o �m�.', 'O �m� atrai a barra de ferro.', 'A for�a que a barra de ferro exerce sobre o �m� � maior que a for�a que o �m� exerce sobre a barra de ferro.'),
		(7, 5,'Sobre as propriedades do campo magn�tico, assinale a alternativa falsa.', 'As linhas de indu��o magn�tica s�o sempre abertas.', 'As linhas de indu��o magn�tica emergem do polo norte magn�tico e adentram o polo sul magn�tico.', 'A concentra��o de linhas de indu��o magn�tica est� relacionada com a intensidade do campo magn�tico na regi�o.', 'N�o � poss�vel separar, em nenhuma ocasi�o, os polos norte e sul magn�ticos.'),
		(7, 6,'Sobre o campo magn�tico terrestre, assinale a alternativa falsa:', 'O campo magn�tico terrestre � mais fraco na regi�o dos polos.', 'O campo magn�tico terrestre � mais intenso na regi�o dos polos.', 'O campo magn�tico terrestre surge por causa da diferen�a na velocidade de rota��o do n�cleo e da crosta terrestre.', 'O polo sul magn�tico encontra-se no polo norte geogr�fico da Terra.'),
		(7, 7,'Ao quebrarmos um �m� ao meio, devemos esperar que:', 'cada um de seus peda�os torne-se um �m� menor.', 'a Lei de Lenz afirma que a corrente el�trica induzida em um circuito ou condutor � tal que o seu campo magn�tico sempre favorece as varia��es de campos magn�ticos externos.', 'um dos seus peda�os seja o polo norte, e o outro, polo sul.', 'os seus peda�os fiquem desmagnetizados.'),
		(7, 8,'Indique a �nica afirma��o incorreta:', 'Os estudos sobre magnetismo iniciaram-se a partir da percep��o de que materiais atritados poderiam atrair-se mutuamente.', 'A primeira aplica��o pr�tica do magnetismo foi desenvolvida pelos chineses: a b�ssola.', 'As denomina��es polo norte e polo sul foram dadas por Pierre Pelerin de Maricourt.', 'O experimento de Oersted abriu caminho para os estudos referentes ao eletromagnetismo.'),
		(7, 9,'Receptores s�o dispositivos capazes de:', 'consumir parte da energia el�trica do circuito, transformando-a em calor, em raz�o do efeito Joule.', 'consumir energia el�trica, transformando-a em outras formas de energia.', 'elevar a tens�o el�trica no circuito por meio da aplica��o de uma for�a eletromotriz.', 'receber a tens�o el�trica');