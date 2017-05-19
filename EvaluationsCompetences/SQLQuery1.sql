INSERT Branches
	(Id,Nom)
VALUES (1,'Mathématique')

INSERT Branches
	(Id,Nom)
VALUES (2,'Français')

INSERT Classes
	(Id,Nom,Cycle)
VALUES (1,'1H',1)

INSERT Classes
	(Id,Nom,Cycle)
VALUES (2,'2H',2)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (1,'Dubuis','Mark','markDubuis','dubuis',1)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (2,'Fellay','Eric','ericFellay','fellay',1)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (3,'Ottinger','Greg','gregOttinger','ottinger',1)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (4,'Martin','Kilian','kilianMartin','martin',1)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (5,'Burger','Marie','marieBurger','burger',1)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (6,'Da Silva','Céline','celineDasilva','dasilva',2)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (7,'Mclaren','Lucie','lucieMaclaren','mclaren',2)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (8,'Valente','Carl','carlValente','valente',2)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (9,'Smith','Tristan','tristanSmith','smith',2)

INSERT Eleves
	(Id,Nom,Prenom,Username,Password,Classes_Id)
VALUES (10,'Forbas','Harold','haroldForbas','forbas',2)

INSERT Groupes
	(Id,Nom, Cycle, IdBranches)
VALUES (1,'Poser et résoudre des problèmes pour structurer le plan et l''espace…',1,1)

INSERT Groupes
	(Id,Nom, Cycle, IdBranches)
VALUES (2,'Utiliser la mesure pour comparer des grandeurs…',1,2)

INSERT Groupes
	(Id,Nom, Cycle, IdBranches)
VALUES (3,'Lire de manière autonome des textes variés et développer son efficacité en lecture…',2,1)

INSERT Groupes
	(Id,Nom, Cycle, IdBranches)
VALUES (4,'Utiliser l''écriture et les instruments de la communication pour planifier et réaliser des documents…',2,2)

INSERT Professeurs
	(Id,Nom,Prenom,Username,Password)
VALUES (1,'Moser','Mathieu','mathieu.moser','moser')

INSERT Professeurs
	(Id,Nom,Prenom,Username,Password)
VALUES (2,'Dujardil','Philippe','philippe.dujardil','dujardil')

INSERT ProfesseursClasses
	(Id,IdProfesseurs,IdClasses)
VALUES (1,1,1)

INSERT ProfesseursClasses
	(Id,IdProfesseurs,IdClasses)
VALUES (2,2,2)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (1,'Représentation de figures planes à l''aide de croquis',0,1)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (2,'Construction de droites parallèles et perpendiculaires',1,1)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (3,'Décomposition d''une surface plane en surfaces élémentaires et recomposition',0,1)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (4,'Questionnement du texte, émission et vérification d''hypothèses en cours de lecture',0,2)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (5,'Reformulation d''un passage du texte dans la perspective d''approfondir sa compréhension',1,2)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (6,'Résumé oral d''un texte ou d''une partie de texte pour en dégager le sens',1,2)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (7,'Organisation d''un mesurage, choix d''une unité (conventionnelle ou non) et d''une procédure (longueur, aire, volume, masse, temps) ',1,3)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (8,'Comparer des angles par manipulation',1,3)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (9,'Estimation de grandeurs : longueur, aire, volume, masse, temps ',0,3)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (10,'Utilisation de l''espace graphique (ligne de base, mise en page,…)',0,4)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (11,'Utilisation de la plume à encre, du roller, du stylo à bille',0,4)

INSERT Objectifs
	(Id,Nom,Minima,IdGroupe)
VALUES (12,'Copie à l''encre un texte de manière lisible et soignée en écriture cursive',0,4)

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (1,0,1,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (2,0,2,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (3,0,3,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (4,0,4,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (5,0,5,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (6,0,6,1,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (7,0,1,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (8,0,2,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (9,0,3,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (10,0,4,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (11,0,5,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (12,0,6,2,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (13,0,1,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (14,0,2,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (15,0,3,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (16,0,4,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (17,0,5,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (18,0,6,3,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (19,0,1,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (20,0,2,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (21,0,3,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (22,0,4,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (23,0,5,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (24,0,6,4,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (25,0,1,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (26,0,2,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (27,0,3,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (28,0,4,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (29,0,5,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (30, 0,6,5,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (31,0,7,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (32,0,8,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (33,0,9,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (34,0,10,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (35,0,11,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (36,0,12,6,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (37,0,7,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (38,0,8,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (39,0,9,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (40,0,10,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (41,0,11,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (42,0,12,7,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (43,0,7,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (44,0,8,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (45,0,9,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (46,0,10,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (47,0,11,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (48,0,12,8,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (49,0,7,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (50,0,8,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (51,0,9,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (52,0,10,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (53,0,11,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (54,0,12,9,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (55,0,7,10,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (56,0,8,10,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (57,0,9,10,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (58,0,10,10,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (59,0,11,10,'')

INSERT ElevesObjectifs
	(Id,Niveaux,IdObjectifs,IdEleves,Evaluation)
VALUES (60,0,12,10,'')