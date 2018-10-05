-- tabla grupos

INSERT INTO [dbo].[Groups]
           	([GroupType]
           	,[FirstPosition]
           	,[SecondPosition])
     VALUES  ('A', 'Uruguay', 'Russia'),
    		 ('B', 'Spain', 'Portugal'),
    		 ('C', 'France', 'Denmark'),
    		 ('D', 'Croatia', 'Argentina'),
    		 ('E', 'Brazil', 'Switzerland'),
    		 ('F', 'Sweden', 'Mexico'),
    		 ('G', 'Belgium', 'England'),
    		 ('H', 'Colombia', 'Japan')
GO

-- tabla paises

INSERT INTO [dbo].[NationalTeams]
			([Country]
			,[EarnedPoints]
			,[GroupsId])
	VALUES	('Uruguay', '9', '1'), 
			('Russia', '6', '1'),
			('Saudi Arabia','3', '1'),
			('Egypt','0', '1'),
			('Spain','5', '2'),
			('Portugal','6', '2'),
			('Iran','4', '2'),
			('Morocco','1', '2'),
			('France','7', '3'),
			('Denmark','5', '3'),
			('Peru','3', '3'),
			('Australia','1', '3'),
			('Croatia','9', '4'),
			('Argentina','4', '4'),
			('Nigeria','3', '4'),
			('Iceland','1', '4'),
			('Brazil','7', '5'),
			('Switzerland','5', '5'),
			('Serbia', '3', '5'),
			('Costa Rica','1', '5'),
			('Sweden','6', '6'),
			('Mexico','6', '6'),
			('South Korea','3', '6'),
			('Germany','3', '6'),
			('Belgium','9', '7'),
			('England','6', '7'),
			('Tunisia','3', '7'),
			('Panama','0', '7'),
			('Colombia','6', '8'),
			('Japan','4', '8'),
			('Senegal','4', '8'),
			('Poland','3', '8')
GO

-- tabla mundiales

INSERT INTO [dbo].[HostCountry]
           ([Country]
           ,[StartDate]
           ,[EndDate]
           ,[NationalTeamId])

     VALUES	('Brazil', '2014-06-12', '2014-07-13', '17'), 
     		('Russia', '2018-06-14', '2018-07-15', '2')
GO


-- tabla estadios

INSERT INTO [dbo].[Stadiums]
			([StadiumName]
			,[Capacity]
			,[StadiumLocation])
	VALUES	('Luzhniki Stadium','78011','Moscow'),
			('Otkritie Arena','44190','Moscow'),
			('Krestovsky Stadium','64468','Saint Petersburg'),
			('Fisht Olympic Stadium','44287','Sochi'),
			('Volgograd Arena','43713','Volgograd'),
			('Rostov Arena','43472','Rostov-on-Don'),
			('Nizhny Novgorod Stadium', '43319','Nizhny Novgorod'),
			('Kazan Arena','42873','Kazan'),
			('Samara Arena','41970','Samara'),
			('Mordovia Arena','41685','Saransk'),
			('Kaliningrad Stadium','33973','Kaliningrad'),
			('Central Stadium','33061','Yekaterinburg')
GO

-- tabla jugadores

INSERT INTO [dbo].[Players]
			([DocumentId]
			,[NationalTeamId]
			,[FirstName]
			,[LastName]
			,[PlayerNationality]
			,[PlayerBirthdate]
			,[Dorsal]
			,[Position]
			,[ScoredGoals])
	VALUES
			('38017431', '1', 'Edinson', 'Cavani', 'Uruguayan', '1987-02-14','9', 'Striker', 3),
			('39044909','2','Denis','Cheryshev','Russian','1990-12-26','11','Forward', 4),

			('42045904','5','Diego','Costa','Spanish','1988-10-07','19','Striker',3),
			('32018432', '6', 'Cristiano', 'Ronaldo', 'Portuguese', '1985-02-05','7', 'Forward', 4),

			('45094349','9','Kylian','Mbappe','French','1998-12-20','7','Forward',4),
			('32834139','10','Mathias','Jorgensen','Danish','1990-04-23','25','Centre Back', 1),

			('27928341','13','Ivan','Perisic','Croatian','1989-02-02','44','Winger', 3),
			('33738339','14','Sergio','Aguero','Argentinian','1988-06-02','11','Forward',2),

			('36745903','17','Neymar','Silva','Brazilian','1992-02-05','10','Forward', 2),
			('31093278', '18', 'Steven', 'Zuber', 'Swiss', '1991-08-17','17', 'Winger', 1),

			('24348593','21', 'Ola', 'Toivonen','Swedish','1986-07-03','11','Midfielder', 2),
			('26345920', '22', 'Javier', 'Hernandez', 'Mexican', '1988-06-01','17', 'Striker', 1),

			('37253687','25','Romelu', 'Lukaku','Belgium','1993-05-13','9','Striker',4),
			('39236741', '26', 'Harry', 'Kane', 'English', '1995-07-28','10', 'Striker', 6),

			('38362807','29','Yerry','Mina','Colombian','1994-09-23','13','Centre Back', 3),
			('25923492', '30', 'Takashi', 'Inui', 'Japanese', '1988-06-02','8', 'Midfielder', 2)

GO

-- tabla referees

INSERT INTO [dbo].[Referees]
           ([FirstName]
           ,[LastName]
           ,[DocumentId]
           ,[DocumentType]
           ,[RefereeNationality])
	VALUES ('Nestor', 'Pitana', '20234985', 'DNI', 'Argentinian'),
           ('Mark','Geiger','95465321', 'Passport', 'American'),
           ('Andres', 'Cunha', '98654326','Passport', 'Uruguayan'),
           ('Sergei', 'Karasev', '98654215', 'Passport', 'Russian'),
           ('Felix', 'Brych', '86542315', 'Passport', 'German')

GO

--
