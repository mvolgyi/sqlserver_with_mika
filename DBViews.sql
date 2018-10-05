-- Ejercicio A

--


CREATE VIEW EjercicioA as 
SELECT * FROM(
Select  p.FirstName Nombre, p.LastName Apellido ,gp.GroupType Zona, nt.Country Pais, P.scoredGoals Goles,
RANK() OVER (PARTITION BY gp.GroupType  ORDER BY  p.ScoredGoals DESC) Importancia
From Groups gp, Players p, NationalTeams nt
where p.nationalteamID = nt.nationalteamID
AND nt.groupsID = gp.groupsID ) a
where a.Importancia = 1



-- Ejercicio C

Select p.FirstName Nombre, p.LastName Apellido, p.PlayerNationality Nacionalidad, p.ScoredGoals Goles, ij.InjuriType Estado_Jugador,
 count(NumberOfRedCards), count(NumberOfYellowCards)
FROM Player p, FootballWarnings fw, Injuries ij, PlayedMatches pm
where p.documentID = fw.documentID
AND p.documentID = ij.documentID