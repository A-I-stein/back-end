/*
Created: 17/09/2019
Modified: 12/11/2019
Project: A.I.stein
Model: PostgreSQL 10
Company: A.I.stein
Author: Gabriel Cruz
Version: 4.0
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
		(1,'Som & Ondas'),
		(2,'Trabalho, Energia & Potência'),
		(3,'Calor & Termodinâmica'),
		(4,'Mecânica Quântica'),
		(5,'Luz & Radiação'),
		(6,'Electricidade, Magnetismo & Circuitos');

INSERT INTO Usuario (Username, Nome, Senha, Email, Data_Cadastro, Identificador_Tipo, Foto, Genero, Data_Nascimento)
	VALUES
		('Itabirito','Gabriel Cruz','123','teste@email.com', CURRENT_DATE,'A',2,4, null),
		('Patolino','Arthur Marcolino','kkk','teste@yahoo.com.br', CURRENT_DATE,'P',4,2, null),
		('Almoço','Italo Fidelis','senha','teste@hotmail.com', CURRENT_DATE,'E',0,1, CURRENT_DATE),
		('Totô','Heitor Santos','654321','teste@gmail.com', CURRENT_DATE,'I',3,0, null);

INSERT INTO Administrador (Username, Escola, Numero_Aprovacoes, Dias_Como_Administrador, Materia)
	VALUES
		('Itabirito','UFMG', 4, 10, 2);

INSERT INTO Professor (Username, Escola, Materia)
	VALUES
		('Patolino','MIT', 4);

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
		(31'Atrito', '<iframe src="https://phet.colorado.edu/sims/html/friction/latest/friction_pt.html" width="800" height="600" scrolling="no" allowfullscreen></iframe>', 'Noah Podolefsky (lead)
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
			Cheryl McCutchan (graphic arts',33,5),Balancing Act
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
		(0,1);

INSERT INTO Questao(Codigo_Questionario, Codigo_Questao, Descricao_Pergunta, Descricao_Resposta_Correta, Descricao_Resposta_Incorreta_1, Descricao_Resposta_Incorreta_2, Descricao_Resposta_Incorreta_3)
	VALUES
		(0, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(0, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(1, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(2, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(3, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(4, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(5, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 0,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 1,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 2,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 3,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 4,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 5,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 6,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 7,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 8,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3'),
		(6, 9,'Pergunta', 'Resp_Correta', 'Resp_1', 'Resp_2', 'Resp_3');