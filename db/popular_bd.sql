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
		(2,'Trabalho, Energia e Potência'),
		(3,'Calor e Termodinâmica'),
		(4,'Mecânica Quântica'),
		(5,'Luz e Radiação'),
		(6,'Electricidade, Magnetismo e Circuitos');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero, Data_Nascimento)
	VALUES
		('Gabriel','Gabriel Cruz','123','teste@email.com', CURRENT_DATE,'A',2,4, null),
		('Patolino','Arthur Marcolino','kkk','teste@yahoo.com.br', CURRENT_DATE,'P',4,2, null),
		('Almoço','Italo Fidelis','senha','teste@hotmail.com', CURRENT_DATE,'E',0,1, CURRENT_DATE),
		('Totô','Heitor Santos','654321','teste@gmail.com', CURRENT_DATE,'I',3,0, null);

INSERT INTO Administrador (Username, Escola, Numero_Aprovacoes, Dias_Como_Administrador, Materia)
	VALUES
		('Gabriel','CEFET_MG', 4, 10, 2);

INSERT INTO Professor (Username, Escola, Materia)
	VALUES
		('Patolino','CEFET_MG', 4);

INSERT INTO Aluno (Username, Escola)
	VALUES
		('Almoço', 'CEFET-MG');

INSERT INTO Conteudo (Codigo_Conteudo, Nome_Conteudo, Texto_Conteudo, Materia, Resumo_Conteudo, Tipo_Conteudo)
	VALUES
		(0, 'Teoria da Relatividade', 'A Relatividade Especial é uma teoria publicada no ano de 1905 por Albert Einstein, concluindo estudos precedentes do físico neerlandês Hendrik Lorentz, entre outros. Ela substitui os conceitos independentes de espaço e tempo da Teoria de Newton pela ideia de espaço-tempo como uma entidade geométrica unificada. O espaço-tempo na relatividade especial consiste de uma variedade diferenciável de 4 dimensões, três espaciais e uma temporal (a quarta dimensão), munida de uma métrica pseudo-riemanniana, o que permite que noções de geometria possam ser utilizadas. É nessa teoria, também, que surge a ideia de velocidade da luz invariante.
		O termo especial é usado porque ela é um caso particular do princípio da relatividade em que efeitos da gravidade são ignorados. Dez anos após a publicação da teoria especial, Einstein publicou a Teoria Geral da Relatividade, que é a versão mais ampla da teoria, em que os efeitos da gravitação são integrados, surgindo a noção de espaço-tempo curvo.', 4, 'Teoria da Relatividade é a denominação dada ao conjunto de duas teorias científicas: a Relatividade Restrita (ou Especial) e a Relatividade Geral.', 'O');

INSERT INTO ImagemAnexaAConteudo (Codigo_Imagem, Codigo_conteudo )
	VALUES
		(1,0);

INSERT INTO Jogo(Codigo_Jogo, Nome_Jogo, URL_Jogo, Creditos_Jogo, Codigo_Imagem, Codigo_Materia)
	VALUES
		(0,'Adição de Vetores', '<iframe src="https://phet.colorado.edu/sims/html/vector-addition/latest/vector-addition_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Brandon Li (developer)
			Chris Malley (developer)
			Martin Veillette (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Diana López Tavares
			Amanda McGarry
			Ariel Paul
			Kathy Perkins',8,0),
		(1,'Laboratório de Força Gravítica: Básico', '<iframe src="https://phet.colorado.edu/sims/html/gravity-force-lab-basics/latest/gravity-force-lab-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Barlow (developer)
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
		(2,'Massas e Molas: Básico', '<iframe src="https://phet.colorado.edu/sims/html/masses-and-springs-basics/latest/masses-and-springs-basics_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Denzell Barnett (developer)
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
		(4,'Laboratório do Pêndulo', '<iframe src="https://phet.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Jonathon Olson (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',10,0),
		(5,'Movimento de Projétil', '<iframe src="https://phet.colorado.edu/sims/html/projectile-motion/latest/projectile-motion_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Andrea Lin (developer)
			Wendy Adams
			John Blanco
			Mike Dubson
			Amanda McGarry
			Ariel Paul
			Kathy Perkins',11,0),
		(6,'Gravidade e Órbitas', '<iframe src="https://phet.colorado.edu/sims/html/gravity-and-orbits/latest/gravity-and-orbits_pt_BR.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
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
			Bruna Shinohara de Mendonça
			Ariel Paul
			Kathy Perkins
			Martin Veillette',12,0),
		(8,'Forças e Movimento: Noções Básicas', '<iframe src="https://phet.colorado.edu/sims/html/forces-and-motion-basics/latest/forces-and-motion-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
			Sam Reid (developer)
			Patricia Loeblein
			Ariel Paul
			Kathy Perkins',13,0),
		(9,'Energia do Parque de Skate: Básico', '<iframe src="https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Ariel Paul (lead)
			Noah Podolefsky (lead)
			Sam Reid (lead, developer)
			Michael Dubson
			Bryce Gruneich
			Patricia Loeblein
			Emily B. Moore
			Kathy Perkins
			Sharon Siman-Tov (graphic arts)
			Amanda McGarry (graphic arts)',14,0),
		(10,'Lei de Equilíbrio', '<iframe src="https://phet.colorado.edu/sims/html/balancing-act/latest/balancing-act_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Kathy Perkins (lead)
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
		(13,'Laboratório de Força Gravítica', '<iframe src="https://phet.colorado.edu/sims/html/gravity-force-lab/latest/gravity-force-lab_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (developer)
			John Blaco (developer)
			Noah Podolefsky
			Carl Wieman
			Wendy Adams
			Patricia Loeblein',17,0),
		(14,'Ondas: Intro', '<iframe src="https://phet.colorado.edu/sims/html/waves-intro/latest/waves-intro_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana López Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts)',18,1),
		(15,'Interferência de Onda', '<iframe src="https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana López Tavares
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
		(18,'Formas e transformações de energia', '<iframe src="https://phet.colorado.edu/sims/html/energy-forms-and-changes/latest/energy-forms-and-changes_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Klusendorf (lead developer)
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
		(20,'Laboratório do Pêndulo', '<iframe src="https://phet.colorado.edu/sims/html/pendulum-lab/latest/pendulum-lab_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Jonathon Olson (developer)
			Amy Rouinfar (lead designer)
			Michael Dubson (original designer)
			Trish Loeblein
			Ariel Paul
			Kathy Perkins',23,2),
		(21,'Lei de Hooke', '<iframe src="https://phet.colorado.edu/sims/html/hookes-law/latest/hookes-law_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
			Chris Malley (developer)
			Mike Dubson
			Bruna Shinohara de Mendonça
			Ariel Paul
			Kathy Perkins
			Martin Veillette',13,2),
		(22,'Energia do Parque de Skate: Básico', '<iframe src="https://phet.colorado.edu/sims/html/energy-skate-park-basics/latest/energy-skate-park-basics_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Ariel Paul (lead)
			Noah Podolefsky (lead)
			Sam Reid (lead, developer)
			Michael Dubson
			Bryce Gruneich
			Patricia Loeblein
			Emily B. Moore
			Kathy Perkins
			Sharon Siman-Tov (graphic arts)
			Amanda McGarry (graphic arts)',14,2),
		(23,'Difusão', '<iframe src="https://phet.colorado.edu/sims/html/diffusion/latest/diffusion_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
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
		(24,'Gases: Introdução', '<iframe src="https://phet.colorado.edu/sims/html/gases-intro/latest/gases-intro_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Malley (developer)
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
		(26,'Formas e transformações de energia', '<iframe src="https://phet.colorado.edu/sims/html/energy-forms-and-changes/latest/energy-forms-and-changes_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Chris Klusendorf (lead developer)
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
		(28,'Estados da Matéria: Básico', '<iframe src="https://phet.colorado.edu/sims/html/states-of-matter-basics/latest/states-of-matter-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Yuen-ying Carpenter (lead designer, HTML5)
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
		(30,'Interações Atómicas', '<iframe src="https://phet.colorado.edu/sims/html/atomic-interactions/latest/atomic-interactions_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Yuen-ying Carpenter (lead designer, HTML5)
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
			Diana López Tavares (lead designer)
			Michael Dubson (original designer)
			Wendy Adams
			John Blanco
			Ariel Paul
			Kathy Perkins',31,4),
		(33,'Dispersão de Rutherford', '<iframe src="https://phet.colorado.edu/sims/html/rutherford-scattering/latest/rutherford-scattering_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Hanson
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
			Diana López Tavares
			Ariel Paul
			Kathy Perkins
			Katie Woessner
			Cheryl McCutchan (graphic arts',33,5),
		(35,'Espectro do Corpo Negro', '<iframe src="https://phet.colorado.edu/sims/html/blackbody-spectrum/latest/blackbody-spectrum_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Arnab Purkayastha (developer)
			Saurabh Totey (developer)
			Martin Veillette (developer)
			Diana López Tavares (lead designer)
			Michael Dubson (original designer)
			Wendy Adams
			John Blanco
			Ariel Paul
			Kathy Perkins',31,5),
		(36,'Interferência de Onda', '<iframe src="https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Sam Reid (lead developer)
			Amy Rouinfar (lead designer)
			Noah Podolefsky (original designer)
			Wendy Adams
			Diana López Tavares
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
		(38,'Moléculas e Luz', '<iframe src="https://phet.colorado.edu/sims/html/molecules-and-light/latest/molecules-and-light_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead)
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
		(39,'Percepção de cor', '<iframe src="https://phet.colorado.edu/sims/html/color-vision/latest/color-vision_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Bryce Gruneich (lead)
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
		(41,'Laboratório do Capacitor: Básico', '<iframe src="https://phet.colorado.edu/sims/html/capacitor-lab-basics/latest/capacitor-lab-basics_en.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Andrew Adare (developer)
			Jesse Greenberg (developer)
			Chris Malley (developer)
			Jonathan Olson (developer)
			Emily Randall (developer)
			Emily Moore
			Ariel Paul
			Kathy Perkins',39,6),
		(42,'Kit de Construção de Circuitos: DC - Virtual Lab', '<iframe src="https://phet.colorado.edu/sims/html/circuit-construction-kit-dc-virtual-lab/latest/circuit-construction-kit-dc-virtual-lab_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
			Sam Reid (developer)
			Denzell Barnett (developer)
			Wendy Adams
			Michael Dubson
			Ariel Paul
			Kathy Perkins
			Carl Wieman
			Mariah Hermsmeyer (graphic arts)
			Cheryl McCutchan (graphic arts)',40,6),
		(43,'Kit de Construção de Circuitos: DC', '<iframe src="https://phet.colorado.edu/sims/html/circuit-construction-kit-dc/latest/circuit-construction-kit-dc_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Amy Rouinfar (lead designer)
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
		(45,'Balões e Eletricidade Estática', '<iframe src="https://phet.colorado.edu/sims/html/balloons-and-static-electricity/latest/balloons-and-static-electricity_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
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
		(49,'Resistência num condutor', '<iframe src="https://phet.colorado.edu/sims/html/resistance-in-a-wire/latest/resistance-in-a-wire_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Michael Dubson (lead, developer)
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
		(0, 0,'Uma pessoa possui, na superfície da Terra, ao nível do mar, uma massa de 48 kg. Sabendo-se que a aceleração da gravidade na superfície da Lua é cerca de seis vezes menor que na superfície da Terra, ao nível do mar, podemos afirmar, com relação a essa pessoa, que:', 'Seu peso, na superfície na Lua, é aproximadamente 8 Kg/F', 'Seu peso, na superfície na Lua, é aproximadamente 48 Kg/F', 'Sua massa, na superfície na Lua, é aproximadamente 384 Kg/F', 'Seu peso é o mesmo, tanto na superfície da Lua, quanto na superfície da Terra, ao nível do mar'),
		(0, 1,'Uma partícula de massa igual a 10 kg é submetida a duas forças perpendiculares entre si, cujos módulos são 3,0N e 4,0N. Pode-se afirmar que o módulo de sua aceleração é em m/s ao quadrado:', '0,5', '5,0', '0,7', '7,0'),
		(0, 2,'Um menino pesa 400 N na superfície da Terra, onde se adota g = 10 m/s2. Se o menino fosse transportado para uma nave, onde a aceleração da gravidade é quatro vezes menor, a sua massa e seu peso seriam, respectivamente:', '40 Kg e 100 N', '40 Kg e 200N', '20 Kg e 200 N', '20 Kg e 400N'),
		(0, 3,'Um bloco exige uma força F1 para ser posto em movimento, vencendo a força de atrito estático. Corta-se o bloco ao meio, colocando uma metade sobre a outra. Se agora F2 a força necessária para pôr o conjunto em moimento. Sobre a relação F2/F1, pode-se afirmar que:', 'Ela é igual a 1', 'Ela é igual a 2', 'Ela é igual a 1/2', 'Seu valor depende de sua superfície'),
		(0, 4,'Um corpo de massa igual a 10 kg desliza, em Movimento Uniforme Uniforme, sobre uma mesa horizontal, sob a ação de uma força horizontal de módulo 10 N. Considere a aceleração gravitacional com módulo g = 10 m/s2, o coeficiente de atrito entre o corpo e a mesa é:', '0,1', '10', '1', '0'),
		(0, 5,'Numa alavanca, Fr = 300N, Br = 1m, Bp = 2m. Sabendo que a alavanca está em equilíbrio e que o peso da barra é desprezível determine a Fp. (considere: Fr = força resistente, Br = braço da força resistente, Fp = força potente, Bp = braço da força potente)', '150 N', '300 N', '600 N', '450 N'),
		(0, 6,'Uma roldana móvel Rm, está presa a uma roldana fixa Rf e o sistema está em repouso. Considere as massas das cordas, das roldanas e das forças de atrito desprezíveis. Se na roldana móvel coloca-se um bloco de massa m1 e na roldana fixa coloca-se um bloco idêntico de massa m2, a relação entre as massas dos blocos m1 e m2 é:', 'm1 = 2(m2)', 'm1 = m2', 'm1 = 3(m2)', 'm1 = (m2)/2'),
		(0, 7,'Quando estamos viajando de ônibus e o mesmo freia bruscamente, nossos corpos são arremessados para frente. Esta situação se explica pela 1ª Lei de Newton que é:', 'Propriedade geral da matéria denominada Inércia', 'Princípio fundamental da dinâmica', 'Princípio da Ação e Reação', 'Princípio da conservação da Energia Mecânica'),
		(0, 8,'Um elevador de peso igual a 8.000 N parte do repouso e sobe verticalmente 50 m em 5 s, em movimento uniformemente acelerado. Desprezando-se as forças dissipativas e as massas dos cabos de sustentação e sabendo-se que a aceleração gravitacional local é igual a 10 m/s2 , a potência, em kW, solicitada é igual a', '112', '100', '64', '80'),
		(0, 9,'Dois blocos de massas  respectivamente, são abandonados, a partir do repouso, de uma altura h, em relação ao solo, ligados por um cabo de massa desprezível, conforme figura acima. Considerando que os corpos caem em queda livre, qual o módulo de tensão no cabo?', 'T = 0', 'T = m2.g', 'T = (m2-m1).g', 'T = (m2+m1).g'),
		(1, 0,'Para estudar impulso e quantidade de movimento, alguns estudantes são convidados a fazer um experimento no qual deverão atirar um projétil, cuja ponta é feita de um material que se fixa ao objeto a ser acertado. O objeto de 200 g encontra-se em repouso sobre uma superfície lisa e, ao ser atingido pelo projétil, cuja massa é de 40 g, passa a se deslocar com uma velocidade de 2 m/s. Desprezando os atritos, pode-se afirmar que a velocidade com que o projétil atingiu o objeto foi de:', '43,2km/h', '12,0km/h', '7,2m/s', '10,0m/s'),
		(1, 1,'Um estudante tem um pai apaixonado por carros antigos e que sempre comparece a eventos em que alguns desses veículos são expostos. Em uma oportunidade de acompanhar seu pai, o estudante percebe que tais veículos possuem uma lataria muito mais resistente que a dos carros atuais. Isso se deve principalmente por causa da:', 'segurança dos passageiros, uma vez que ao reduzir a resistência do material, em uma colisão, o tempo de impacto aumenta, reduzindo a força aplicada.', 'economia das montadoras de veículos, que diminuem a resistência deles, prejudicando assim os compradores atuais de veículos, quando em comparação com os carros antigos.', 'sustentabilidade, uma vez que quanto mais grossas as peças utilizadas nos veículos maior será a degradação do ambiente e a dificuldade de descartar os materiais.', 'melhoria da aerodinâmica do veículo, uma vez que as peças mais frágeis aumentam a força de empuxo e a sustentação sobre ele.'),
		(1, 2,'Um ciclista, em velocidade constante, gastou 3 horas para percorrer um trajeto de 16 km. Quanto tempo esse ciclista gastou para fazer os primeiros 12 km desse trajeto?', '2 horas e 15 minutos.', '2 horas e 25 minutos.', '1 hora e 45 minutos.', '2 horas e 5 minutos.'),
		(1, 3,'Três amigos reúnem-se num mesmo local e, dispondo de uma bicicleta que pode levar somente duas pessoas de cada vez, precisam chegar ao centro de estudos da UFF o mais rápido possível. O amigo A leva o amigo B, de bicicleta, até um ponto x do percurso e retorna para apanhar o amigo C, que vinha caminhando ao seu encontro. O amigo B, a partir de x, continua a pé sua viagem rumo ao centro de estudos da UFF. Os três chegam simultaneamente ao centro de estudos da UFF. A velocidade média como pedestre é V1 e vale 3 km/h, enquanto que como ciclista é V2 e vale 15 km/h. A velocidade média com que os amigos farão o percurso total será:', '7,5Km/h', '4,5Km/h', '9Km/h', '12Km/h'),
		(1, 4,'Na rodovia BR-040, que liga Rio de Janeiro a Brasília, uma cegonheira (caminhão que transporta outros carros) faz uma ultrapassagem que leva 6 segundos com velocidade constante em relação a outra cegonheira de mesmas dimensões, cuja velocidade também é constante. Cada veículo tem 12 metros de comprimento. Qual seria a diferença de velocidades entre as cegonheiras?', '4m/s', '2m/s', '3m/s', '1m/s'),
		(1, 5,'Um móvel se desloca em uma trajetória retilínea, mantendo velocidade escalar constante de 108 km/h. A velocidade desse móvel, em unidades do Sistema Internacional (SI), vale', '100', '250', '360', '500'),
		(1, 6,'A física clássica mostra que velocidade instantânea de um objeto no instante t é o limite das velocidades', 'médias do objeto calculadas em intervalos de tempo cada vez menores, contendo t.', 'maiores do objeto calculadas em intervalos de tempo cada vez maiores, contendo t.', 'médias do objeto calculadas em intervalos de tempo cada vez maiores, contendo t.', 'médias do objeto calculadas em um determinado intervalo de tempo t.'),
		(1, 7,'Um corpo efetua um movimento retilíneo obedecendo à função horária: 
		       S(t) = 5 (m/s2 ) t2 + 4 (m), onde t é dado em segundos. 
		       Considerando que esse corpo possui uma massa de 5 Kg qual é o valor da força aplicada ao movimento desse corpo? ', '50N', '20N', '12,5N', '25N'),
		(1, 8,'Considere as quatro afirmações seguintes.
	I. No MRUV, a velocidade varia linearmente com o tempo.
	II. Um carro em marcha à ré não pode realizar movimento acelerado.
	III. O coeficiente angular da reta que você obtém ao construir o gráfico da velocidade x tempo fornece a velocidade inicial do móvel.
	IV. Pode-se determinar a velocidade de um móvel no MRUV, sem conhecer o tempo de percurso do móvel.
Das afirmações apresentadas, são verdadeiras', 'I e IV, apenas.', 'I e III, apenas.', 'I e II, apenas.', 'III e IV, apenas.'),
		(1, 9,'Podemos dizer que uma partícula se encontra em movimento quando suas posições sofrem alterações no decorrer do tempo em relação a um dado referencial. Estando em movimento, ainda podemos dizer que a partícula pode estar em movimento uniforme ou em movimento variado. Acerca de um satélite geoestacionário que se encontra sobre a linha do equador terrestre, podemos afirmar corretamente que', 'a aceleração tangencial é nula e a aceleração centrípeta dependerá da altitude que se encontrar em relação à superfície da Terra.', 'a aceleração vetorial desse satélite não pode ser nula pois o satélite deverá possuir velocidade tangencial muito grande.', 'possui aceleração escalar constante e diferente de zero.', 'sua aceleração resultante é a própria aceleração tangencial.'),
		(2, 0,'Um homem adulto conversa com outro de modo amistoso e sem elevar o nível sonoro de sua voz. Enquanto isso, duas crianças brincam emitindo gritos eufóricos, pois a brincadeira é um jogo interessante para elas. O que distingue os sons emitidos pelo homem dos emitidos pelas crianças', 'são a altura, a intensidade e o timbre.', 'são a intensidade e o timbre, apenas.', 'são a altura e a intensidade, apenas.', 'é a intensidade, apenas.'),
		(2, 1,'A cuíca é um instrumento musical, semelhante a um tambor, com uma haste de madeira presa no centro de uma membrana de couro, pelo lado interno. Friccionando a haste com um pedaço de tecido molhado e pressionando a parte externa da cuíca com o dedo, produz-se uma onda sonora de ronco característico. Quando essa onda sonora propaga-se,', 'há propagação de energia.', 'há transporte de matéria.', 'sua amplitude aumenta.', 'aumenta a sua frequência.'),
		(2, 2,'Marque a alternativa correta a respeito das características das ondas sonoras.', 'O aparelho auditivo humano é capaz de captar apenas um intervalo específico de frequências sonoras.', 'Um som alto significa um som de alto volume.', 'Quanto menor for a densidade de um meio, maior será a velocidade do som, por isso as ondas sonoras propagam-se com maior velocidade no ar do que na água.', 'A altura é a qualidade do som relacionada à energia emitida pela fonte sonora.'),
		(2, 3,'Determinada fonte produz ondas no ar com comprimento de onda igual a 2 mm. Assinale a alternativa que traz a informação correta a respeito dessas ondas. Dados: Se necessário, adote a velocidade de propagação das ondas sonoras através do ar como sendo igual a 340 m/s.', 'As ondas sonoras são inaudíveis, pois o comprimento de onda é maior que a largura do tímpano.', 'As ondas sonoras são inaudíveis, pois possuem frequência abaixo do valor mínimo perceptível pelo ouvido humano.', 'As ondas sonoras são audíveis para o ser humano.', 'As ondas sonoras são inaudíveis, pois possuem frequência acima do valor máximo perceptível pelo ouvido humano.'),
		(2, 4,'Numa enfermária,o soro fornecido a um paciente goteja a razão de 30 gotas por minuto.Qual é o período e a frequência média do gotejamento respectivamente?', '2,0 s e 0,50 Hz', '0,5 s e 3 Hz', '1,0 s e 0,25 Hz', '0,25 s e 4 Hz'),
		(2, 5,'Uma piscina tem fundo plano horizontal.Uma onda eletromagnética de Frequência 100 MHz vinda de um satélite,incide perpendicularmente sobre a piscina e é parcialmente refletida pela superfície da Água e pelo fundo da piscina.Suponhando que,para essa frequência a velocidade da luz na água seja de 4,0*10 elevado a 4 m/s.Qual é o comprimento de onda da água?', '4,0*10 elevado a -1', '4,0*10 elevado a 3', '4,0*10 elevado a -2', '4,0*10 elevado a 5'),
		(2, 6,'Um menino,balançando em uma corda dependurada em uma árvore,faz 30 oscilações em 1 minuto.Pode-se afirmar que seu movimento tem:', 'Um período de 2,0 s', 'Uma frequência de 15 Hz', 'Um periodo de 3,0 s', 'Uma frequência de 3 Hz'),
		(2, 7,'Uma onda periódica transversal se propaga numa mola,onde cada ponto executa uma oscilação completa a cada 0,20 s.Sabendo-se que a distância entre duas cristas sucessival é 30cm,pode-se concluir que a velocidade de propagação dessa onda,em m/s,é:', '0,15', '3,0', '1,5', '0,85'),
		(2, 8,'Um návio de pesquisa com um sonar,emite ultrassons em direção ao fundo do mar.Microfones especiais no casco recebem o eco após 0,4s.Sabendo-se que o som se propaga na água do mar a uma velocidade de 1500 m/s.Qual é a profundidade do local?', '300m', '150m', '700m', '3750m'),
		(2, 9,'Quando, em uma região plana e distante de obstáculos, se ouve o som de um avião voando, parece que esse som vem de uma direção diferente daquela em que, no mesmo instante, se enxerga o avião. Considerando-se essa situação, é CORRETO afirmar que isso ocorre porque:', 'A velocidade do som é menor que a velocidade da luz no ar.', 'A velocidade do avião é menor que a velocidade do som no ar.', 'A velocidade do avião é maior que a velocidade do som no ar.', 'O som é uma onda longitudinal e a luz uma onda transversal.'),
		(3, 0,'Uma bola de chumbo de 3kg é lançada a partir do solo verticalmente para cima com velocidade de 40m/s. Qual o valor da Energia Cinética no instante de lançamento?', '2.400 J', '240 J', '4.800 J', '120 J'),
		(3, 1,'Qual a altura que uma bola irá alcançar sendo que sua energia potencial gravitacional é de 1.200 J, massa = 5kg e gravidade = 10 m/s2?', '24 m', '20 m', '22 m', '12 m'),
		(3, 2,'Calcule a Energia Mecânica se a massa for igual a 10kg e velocidade de 6m/s, sendo a altura de 8m e gravidade 10. A Energia Mecânica é:', '980 J', '970 J', '900 J', '485 J'),
		(3, 3,'Se uma bola está em repouso no chão e a sua massa é igual a 7kg e considerando a força da graavidade igual à 10m/s2, qual é a sua Energia?', '0 J', '7 J', '10 J', '70 J'),
		(3, 4,'Qual é a força que um pedreiro tem que fazer para carregar 80 kg de terra com a ajuda de um carrinho de mão que possui 1,20 metro de comprimento? Sabendo que a distância entre o centro de gravidade do volume de terra até o centro da roda do carrinho é 60 cm.', '40KgF', '100KgF', '80KgF', '50KgF'),
		(3, 5,'Qual o valor da força que uma pessoa deve fazer para manter o corpo de 160N em equilibrio usando 4 roldanas móveis e 1 roldana fixa?', '10', '20', '85', '80'),
		(3, 6,'Qual é a potência de umm motor de um carrinho de brinquedo capaz de realizar um trabalho de 1200 J em 2 minutos?', '600W', '2400W', '800W', '1800W'),
		(3, 7,'Uma bola de 2 kg cai de uma superficie,percorrendo 5 m em 2 s. Qual é o trabalho da bola e a potência da bola nesse intervalo de tempo respectivamente? (Considere G=10 m/s)', '100J e 50W', '200J e 100W', '100J e 125W', '200J e 50W'),
		(3, 8,'A usina de Itaipu é uma das maiores hidrelétricas do mundo em geração de energia. Com 20 unidades geradoras e 14 000 MW de potência total instalada, ela apresenta uma queda de 118,4 m e vazão nominal de 690 m3/s por unidade geradora. O cálculo da potência teórica leva em conta a altura da massa de água represada pela barragem, a gravidade local (10 m/s2) e a densidade da água (1 000 kg/m3). A diferença entre a potência teórica e a instalada é a potência não aproveitada. 
		Qual é a potência, em MW, não aproveitada em cada unidade geradora de Itaipu?', '116,96', '13.183,04', ' 816,96', '0'),
		(3, 9,'Um objeto de 200 kg é acelerado a 4 m/s2 sob ação de uma força F. Determine a distância deslocada pelo objeto sob ação dessa força sabendo que a energia transferida para ele foi de 9,6 kJ.', '12 m', '10 m', '8 m', '14 m'),
		(4, 0,'Para aquecer 500 g de certa substância de 20 ºC para 70 ºC, foram necessárias 4 000 calorias. A capacidade térmica e o calor específico valem respectivamente:', '80 cal/ ºC e 0,16 cal/g. ºC', '90 cal/ ºC e 0,09 cal/g. ºC', '8 cal/ ºC e 0,08 cal/g .ºC', '120 cal/ ºC e 0,12 cal/g. ºC'),
		(4, 1,'Em uma manhã de céu azul, um banhista na praia observa que a areia está muito quente e a água do mar está muito fria. À noite, esse mesmo banhista observa que a areia da praia está fira e a água do mar está morna. O fenômeno observado deve-se ao fato de que:', 'o calor específico da areia é menor que o calor específico da água.', 'a densidade da água do mar é menor que a da areia.', 'o calor contido na areia, à noite, propaga-se para a água do mar.', 'o coeficiente de dilatação térmica da água é maior que o coeficiente de dilatação térmica da areia.'),
		(4, 2,'Um amolador de facas, ao operar um esmeril, é atingido por fagulhas incandescentes, mas não se queima. Isso acontece porque as fagulhas:', 'tem capacidade térmica muito pequena.', 'tem temperatura muito baixa.', 'tem calor específico muito grande.', 'estão em mudança de estado.'),
		(4, 3,'Dentro de uma sala com ar condicionado, a temperatura média é de 17 ºC. No corredor ao lado da sala, a temperatura média é 27 ºC. Tanto a sala quanto o corredor estão a mesma pressão. Sabe-se que num gás, a energia cinética média das partículas que o compõem é proporcional à temperatura e que sua pressão é proporcional ao produto da temperatura pelo número de partículas por unidade de volume.
Com base nesses dados, pode-se afirmar que:', 'A energia cinética média das partículas que compõem o ar é maior no corredor, e o número de partículas por unidade de volume é maior na sala.', 'a energia cinética média das partículas que compõem o ar é maior no corredor, e o número de partículas por unidade de volume é menor na sala.', 'A energia cinética média das partículas que compõem o ar é maior na sala, e o número de partículas por unidade de volume é menor no corredor.', 'A energia cinética média das partículas que compõem o ar é maior na sala, e o número de partículas por unidade de volume é maior no corredor.'),
		(4, 4,'Considere uma mistura de gases H2  e N2 , em equilíbrio térmico. Sobre a energia cinética média e sobre a velocidade média das moléculas de cada gás, pode-se concluir que:', 'Ambas tem a mesma energia cinética média, mas as moléculas de H2 tem maior velocidade média.', 'as moléculas de H2  e N2  tem a mesma energia cinética média e a mesma velocidade média.', 'Ambas tem a mesma velocidade média, mas as moléculas de H2 tem maior energia cinética média.', 'Ambas tem a mesma energia cinética média, mas as moléculas de N2 tem maior velocidade média.'),
		(4, 5,'Qual é o a sub divisão da física que estuda os fenômenos térmicos?', 'Termodinâmica', 'Cinemática', 'Dinâmica', 'Hidrostática'),
		(4, 6,'Se um objeto e aquecido, o que acontece com suas moléculas?', 'Ficam mais agitadas e distantes umas das outras', 'Ficam menos agitadas e mais próximas umas das outras', 'Ficam menos agitadas e distantes umas das outras', 'Não acontece nada'),
		(4, 7,'Quando realmente podemos falar em calor?', 'Quando há diferença entres as temperaturas entre dois corpos', 'Quando a temperatura entre dois corpos são iguais', 'Quando estamos numa sala fechada e refrigerada e tocamos num objeto de metal.', 'Quando estamos expostos por um grande tempo sobre o sol num dia quente'),
		(4, 8,'Qual e a escala Absoluta?', 'Escala Kelvin', 'Escala Celsius', 'Escala Fahrenheit', 'Escala Réaumur'),
		(4, 9,'Numa transformação gasosa reversível, a variação da energia interna é de +300J. Houve compressão e o trabalho realizado pela força de pressão do gás é, em módulo, 200J. Então, podemos afirmar que o gás:', 'recebeu 500J de calor do meio', 'recebeu 100J de calor do meio', 'cedeu 100J de calor ao meio', 'sofreu uma transformação adiabática'),
		(5, 0,'O elétron e sua antipartícula, o pósitron, possuem massas iguais e cargas opostas. Em uma reação em que o elétron e o pósitron, em repouso, se aniquilam, dois fótons de mesma energia são emitidos em sentidos opostos. A energia de cada fóton produzido é, em MeV, aproximadamente:', '0,5', '0,8', '1,6', '3,2'),
		(5, 1,'Um astronauta, em sua nave espacial, está em repouso em relação a uma estrela que emite luz com uma determinada frequência natural. Subitamente, o astronauta acelera a sua nave em direção à estrela até alcançar uma velocidade suficientemente alta para que a luz emitida pela estrela e observada pelo astronauta tenha uma nova frequência, ligeiramente diferente da sua frequência natural. Qual é o nome do fenômeno descrito anteriormente?', 'Efeito Doppler Relativístico', 'Efeito Fotoelétrico', 'Efeito Compton', 'Efeito Hall'),
		(5, 2,'Qual das alternativas a seguir não corresponde a um dos postulados de Bohr?', 'O elétron apresenta um comportamento dual, ou seja, comporta-se ora como onda, ora como partícula.', 'O elétron não pode estar em qualquer estado, somente em estados permitidos, denominados estacionários.', 'O elétron executa um movimento circular e uniforme em torno do núcleo.', 'O momento angular do elétron em torno do núcleo é quantizado.'),
		(5, 3,'Uma régua de 15 centímetros está presa horizontalmente no interior de um vagão que se move com 60% da velocidade da luz no vácuo em relação ao solo. Qual é o comprimento dessa mesma régua para um observador fixo no solo que observa o movimento do vagão?', '12 cm', '15 cm', '9 cm', '25 cm'),
		(5, 4,'Dois amigos resolvem fazer uma experiência. Um deles entra em uma nave espacial e acelera até alcançar uma velocidade próxima da velocidade da luz no vácuo, enquanto o outro permanece em repouso em relação à Terra, local de onde parte a nave. Os dois amigos possuem, cada um, um relógio em mãos, de forma que os dois relógios estão perfeitamente sincronizados no momento da partida da nave. Após o retorno da nave ao planeta, considerando-se que os relógios contabilizam a passagem dos dias, como estará o relógio de quem estava nela, em relação ao relógio de quem estava na Terra?', 'Estará atrasado.', 'Estará adiantado.', 'Estará com os ponteiros quebrados.', 'Estará perfeitamente sincronizado, como antes.'),
		(5, 5,'Qual das alternativas a seguir apresenta um invariante relativístico?', 'Carga elétrica.', 'Tempo', 'Espaço', 'Energia'),
		(5, 6,'Sabendo-se que a velocidade da luz no vácuo é de 300 milhões de metros por segundo, se um corpo, com massa de repouso de 10 kg, inicialmente em repouso sobre uma superfície plana e sem atrito, for acelerado e adquirir movimento retilíneo até alcançar uma velocidade correspondente a 80% da velocidade da luz no vácuo, qual será o valor da energia cinética adquirida por esse corpo?', '2000 MJ', '20 MJ', '20 GJ', '200 J'),
		(5, 7,'Qual das alternativas abaixo apresenta o fenômeno estudado por Albert Einstein que lhe rendeu o Prêmio Nobel de Física?', 'Efeito fotoelétrico.', 'Relatividade restrita.', 'Movimento browniano.', 'Efeito Compton.'),
		(5, 8,'Sabendo-se que uma determinada placa metálica possui função trabalho de 5 eV, e considerando-se o valor da constante de Planck como sendo 4 feV, ao se incidir sobre essa placa uma luz monocromática com frequência de 600 THz, qual será o valor da energia cinética máxima atingida pelos elétrons ejetados da placa?', 'Não haverá ejeção de elétrons da placa metálica.', '1000 eV', '500 eV', '10 eV'),
		(5, 9,'Qual era o objetivo da famosa experiência de Michelson e Morley?', 'Comprovar experimentalmente a existência do éter, suposto meio para propagação de ondas eletromagnéticas.', 'Provar experimentalmente a veracidade dos postulados da relatividade restrita, de Einstein.', 'Demonstrar experimentalmente o fenômeno do efeito Doppler relativístico.', 'Determinar experimentalmente a expressão para o fator de Lorentz.'),
		(6, 0,'Relacione as radiações naturais alfa, beta e gama com suas respectivas características:
		1. alfa (a);
		2. beta (B);
		3. gama (Y).
		
		• Possuem alto poder de penetração, podendo causar danos irreparáveis ao ser humano;
		• São partículas leves, com carga elétrica negativa e massa desprezível;
		• São radiações eletromagnéticas semelhantes aos raios X, não possuem carga elétrica nem massa;
		• São partículas pesadas de carga elétrica positiva que, ao incidirem sobre o corpo humano, causam apenas queimaduras leves.
		A sequência correta, de cima para baixo, é:', 'I, III e IV, apenas.', 'I, II, e III, apenas.', 'II, III e IV, apenas.', 'II, IV e V, apenas.'),
		(6, 1,'Quantas partículas alfa e quantas partículas beta precisam ser emitidas para transformar um urânio-238 (23892U) em rádio (22688Ra):', '3 partículas alfa e 2 partículas beta.', '4 partículas alfa e 3 partículas beta.', '3 partículas alfa e 3 partículas beta.', '1 partícula alfa e 2 partículas beta.'),
		(6, 2,'Todos os dias ficamos expostos a vários tipos de radiações. Seja numa clínica para se realizar um exame com raios X ou simplesmente andando pelas ruas, nosso organismo é constantemente bombardeado por elas. Marque a alternativa que apresenta a radiação de maior penetração no organismo humano.', 'Raios gama', 'Luz visível', 'Infravermelho', 'Ultravioleta'),
		(6, 3,'Os raios X são produzidos em tubos de vidro a vácuo, nos quais elétrons sofrem uma brusca desaceleração quando colidem contra um alvo feito de metal. Desta forma podemos dizer que os raios X constituem um feixe de:', 'fótons', 'prótons', 'elétrons', 'pósitrons'),
		(6, 4,'Uma amostra de 128g de um radioisótopo sofreu desintegração e sobraram apenas 2g. Sabendo que sua meia-vida é de 30 minutos, quanto tempo se passou?', '3 horas', '3 horas e 30 min', '2 horas e 30 min', '4 horas'),
		(6, 5,'O elemento radioativo natural 90 Th 232 , após uma série de emissões alfa e beta, isto é, por decaimento radioativo, converte-se em um isótopo não-radioativo, estável, do elemento chumbo, 82 Pb 208. O número de partículas alfa e beta, emitidas após o processo, é, respectivamente, de:', '6 e 4.', '5 e 5.', '6 e 5.', '5 e 2.'),
		(6, 6,'A meia-vida de um determinado isótopo radioativo de massa molar 60g/mol é igual a 70s. A atividade de uma amostra radioativa contendo 60mg do referido isótopo é: (atividade medida em desintegrações por segundo)', '6,02 x 10 elevado a 18', '6,02 x 10 elevado a 19', '6,02 x 10 elevado a 22', '6,02 x 10 elevado a 23'),
		(6, 7,'Marque a alternativa correta a respeito dos fenômenos da reflexão, refração e absorção da luz.', 'Todas as alternativas anteriores estão incorretas.', 'As leis da reflexão se aplicam tanto à reflexão regular quanto à reflexão difusa.', 'A reflexão de um espelho plano é difusa.', 'Um único raio de luz incidente não pode sofrer os três fenômenos ópticos ao mesmo tempo.'),
		(6, 8,'Ao observar o asfalto em dias quentes podemos perceber a formação de imagens que aparentam poças d’água. Marque a alternativa que apresenta o nome dado a este evento e o fenômeno óptico envolvido em sua ocorrência.', 'Miragens, refração da luz', 'Miragens, reflexão da luz', 'Miragens, absorção da luz.', 'Difração, reflexão da luz'),
		(6, 9,'Anne Marie, modelo profissional, costuma fazer ensaios fotográficos e participar de desfiles de moda. Em trabalho recente, ela usou um vestido que apresentava cor vermelha quando iluminado pela luz do sol. Anne Marie irá desfilar novamente usando o mesmo vestido. Sabendo que a passarela onde ela vai desfilar será iluminada agora com luz monocromática verde, podemos afirmar que o público perceberá seu vestido como sendo:', 'Preto, porque o vestido só reflete a cor vermelha.', 'De cor entre vermelha e verde devido à mistura das cores.', 'Vermelho, pois a cor do vestido independe da radiação incidente.', 'Verde, pois é a cor que incidiu sobre o vestido.'),
		(7, 0,'Comumente se ouve falar dos perigos da alta voltagem em dispositivos elétricos. Todavia, uma alta voltagem pode não significar uma grande quantidade de energia se', 'a quantidade de carga envolvida for baixa.', 'o campo elétrico envolvido for uniforme.', 'a força elétrica envolvida for baixa.', 'o potencial elétrico envolvido for constante.'),
		(7, 1,'Em uma residência onde moram quatro pessoas há um chuveiro de potência 6 kW. Sabendo que cada morador toma dois banhos por dia de aproximadamente 10 min cada e que o chuveiro sempre permanece na posição inverno, determine a energia consumida pelo equipamento em kWh ao fim de 1 mês.', '240', '120', '480', '100'),
		(7, 2,'A respeito da geração de energia elétrica por meio das hidroelétricas, marque a alternativa correta.', 'A água gira as turbinas para que, por meio do fenômeno da indução eletromagnética, a energia elétrica possa ser gerada.', 'Quanto mais alta for a barragem da hidroelétrica, menor será a energia potencial gravitacional e maior será a velocidade dada à água para girar as turbinas.', 'No Brasil, as únicas formas de geração de energia são as hidroelétricas e as termoelétricas.', 'A água deve ser armazenada o mais distante possível das turbinas para que possa existir a possibilidade de alta velocidade com força suficiente para girar as turbinas.'),
		(7, 3,'Pela secção reta de um condutor de eletricidade passam 12,0 C a cada minuto. Nesse condutor, a intensidade da corrente elétrica, em ampères, é igual a:', '0,20', '120', '0,08', '7,20'),
		(7, 4,'Um pequeno ímã é colocado nas proximidades de uma barra de ferro. Sobre a situação descrita, assinale a alternativa correta.', 'O ímã atrai a barra de ferro com a mesma intensidade que a barra de ferro atrai o ímã.', 'A força que o ímã exerce sobre a barra de ferro é maior que a força que o ferro exerce sobre o ímã.', 'O ímã atrai a barra de ferro.', 'A força que a barra de ferro exerce sobre o ímã é maior que a força que o ímã exerce sobre a barra de ferro.'),
		(7, 5,'Sobre as propriedades do campo magnético, assinale a alternativa falsa.', 'As linhas de indução magnética são sempre abertas.', 'As linhas de indução magnética emergem do polo norte magnético e adentram o polo sul magnético.', 'A concentração de linhas de indução magnética está relacionada com a intensidade do campo magnético na região.', 'Não é possível separar, em nenhuma ocasião, os polos norte e sul magnéticos.'),
		(7, 6,'Sobre o campo magnético terrestre, assinale a alternativa falsa:', 'O campo magnético terrestre é mais fraco na região dos polos.', 'O campo magnético terrestre é mais intenso na região dos polos.', 'O campo magnético terrestre surge por causa da diferença na velocidade de rotação do núcleo e da crosta terrestre.', 'O polo sul magnético encontra-se no polo norte geográfico da Terra.'),
		(7, 7,'Ao quebrarmos um ímã ao meio, devemos esperar que:', 'cada um de seus pedaços torne-se um ímã menor.', 'a Lei de Lenz afirma que a corrente elétrica induzida em um circuito ou condutor é tal que o seu campo magnético sempre favorece as variações de campos magnéticos externos.', 'um dos seus pedaços seja o polo norte, e o outro, polo sul.', 'os seus pedaços fiquem desmagnetizados.'),
		(7, 8,'Indique a única afirmação incorreta:', 'Os estudos sobre magnetismo iniciaram-se a partir da percepção de que materiais atritados poderiam atrair-se mutuamente.', 'A primeira aplicação prática do magnetismo foi desenvolvida pelos chineses: a bússola.', 'As denominações polo norte e polo sul foram dadas por Pierre Pelerin de Maricourt.', 'O experimento de Oersted abriu caminho para os estudos referentes ao eletromagnetismo.'),
		(7, 9,'Receptores são dispositivos capazes de:', 'consumir parte da energia elétrica do circuito, transformando-a em calor, em razão do efeito Joule.', 'consumir energia elétrica, transformando-a em outras formas de energia.', 'elevar a tensão elétrica no circuito por meio da aplicação de uma força eletromotriz.', 'receber a tensão elétrica');