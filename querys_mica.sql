INSERT INTO NationalTeams(Country,EarnedPoints)
VALUES
('Uruguay', '9'), 
('Russia', '6'),
('Saudi Arabia','3'),
('Egypt','0'),
('Spain','5'),
('Portugal','6'),
('Iran','4'),
('Morocco','1'),
('France','7'),
('Denmark','5'),
('Peru','3'),
('Australia','1'),
('Croatia','9'),
('Argentina','4'),
('Nigeria','3'),
('Iceland','1'),
('Brazil','7'),
('Switzerland','5'),
('Serbia', '3'),
('Costa Rica','1'),
('Sweden','6'),
('Mexico','6'),
('South Korea','3'),
('Germany','3'),
('Belgium','9'),
('England','6'),
('Tunisia','3'),
('Panama','0'),
('Colombia','6'),
('Japan','4'),
('Senegal','4'),
('Poland','3')

GO

--

INSERT INTO [dbo].[Stadiums]
([StadiumName]
,[Capacity]
,[StadiumLocation])
VALUES
('Luzhniki Stadium','78011','Moscow'),
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
('33738339','14','Sergio','Aguero','Argentinian','1988-06-02','11','Forward',2),
('33016244','14','Lionel','Messi','Argentinian','1987-06-24','10','Forward',0),
('42045904','9','Kylian','Mbappe','French','1998-12-20','7','Forward',4),
('33018432', '9', 'Hugo', 'Lloris', 'French', '1986-12-26','1', 'Goalkeeper', 0)

GO