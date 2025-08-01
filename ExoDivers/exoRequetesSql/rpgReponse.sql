Les bases des requêtes de sélection : 

1°) SELECT / FROM / AS

Exo 1:
SELECT * FROM `personnage`;

Exo 2:
SELECT * FROM `arme`;

Exo 3:
SELECT nom, levelMin FROM `arme`;

Exo 4:
SELECT nom, surnom,level FROM `personnage`;

Exo 5:
SELECT nom AS `Pseudo`, surnom AS `Niveau` FROM `personnage`;

Exo 6:
SELECT libelle AS `Types armes du jeu` FROM `typearme`;

2°) Les calculs, fonction COUNT / SUM/ AVG / MIN / MAX

Exo 1:
SELECT COUNT(*) AS `Nombre d'armes` FROM `arme`;

Exo 2:
SELECT COUNT(idPersonnage) AS `Nombre de personnage` FROM `personnage`;

Exo 3:
SELECT AVG(level) AS `Moyenne de niveau` FROM `personnage`;

Exo 4:
SELECT SUM(baseForce) AS `Points de force`, SUM(baseAgi) AS `Points d'agilité`, SUM(baseIntel) AS `Points d'intelligence` FROM `classe`;

Exo 5:
SELECT MIN(levelMin), MAX(levelMin) FROM `arme`;

Exo 6:
SELECT nom, SUM(baseForce + baseAgi + baseIntel) AS `NB de pont de caracteristiques`
FROM `classe`
GROUP BY nom;
ou
SELECT nom, (baseForce + baseAgi + baseIntel) AS `NB de pont de caracteristiques` FROM `classe`

3°) Les fonctions sur les chaines de caractères : CONCAT / SUBSTRING / LEFT

Exo 1:
SELECT CONCAT(nom, surnom) AS "Personnage" FROM `personnage`;

Exo 2:
SELECT CONCAT(nom, "-F : ", baseForce, "-A : ", baseAgi, "-I : ", baseIntel) AS "Classe" FROM `classe`;

Exo 3:
SELECT SUBSTRING(nom,1,6) FROM `personnage`;

Exo 4:
SELECT CONCAT (SUBSTRING(nom, 1,5), SUBSTRING(description, 1 , 20)) AS "Classe" FROM `classe`;

4°) Filtrer les données avec le mot clef WHERE

Exo 1:
SELECT * FROM `arme` WHERE levelMin >= 5;

Exo 2:
SELECT * FROM `arme` WHERE degat < 25;

Exo 3:
SELECT nom, surnom FROM `personnage` WHERE level = 10;

Exo 4:
SELECT * FROM `typearme` WHERE estDistance = 1;

5°) Les opérateurs AND / OR / BETWEEN

Exo 1:
SELECT * FROM `arme` WHERE levelMin >= 4 AND levelMin <= 8;

Exo 2:
SELECT * FROM `personnage` WHERE idPersonnage <= 3 AND level = 10;

Exo 3:
SELECT * FROM `arme` WHERE levelMin < 4 OR levelMin > 8;

Exo 4:
SELECT * FROM `arme` WHERE idArme = 1 OR idArme = 2 OR degat >= 30;

Exo 5:
SELECT * FROM `arme` WHERE idArme = 1 OR idArme = 2 OR degat BETWEEN 25 AND 40;

Exo 6:
SELECT * FROM `personnage` WHERE  level != 8 AND level > 7 OR level < 6;

Exo 7:
SELECT COUNT(level) AS `NB Perso <10` FROM `personnage` WHERE level != 10;

exo 8:
SELECT AVG(degat) AS `Moyenne degat` FROM `arme` WHERE levelMin BETWEEN 3 AND 7;

6°) LIKE / IN LIMIT / OFFSET / IS NULL

Exo 1:
SELECT * FROM personnage WHERE nom LIKE 'l%';

Exo 2:
SELECT * FROM personnage WHERE nom LIKE 'l%er';

Exo 3:
SELECT * FROM arme WHERE nom LIKE '%bois%';

Exo 4:
SELECT * FROM arme WHERE nom LIKE 'A_b%';

Exo 5:
SELECT * FROM `arme` WHERE idArme IN (1,2,4,5,7);

Exo 6:
SELECT * FROM `personnage` WHERE idPersonnage IN (2,3,4,6) AND level = 10;

Exo 7:
SELECT * FROM `personnage` WHERE surnom IS NOT NULL;

Exo 8:
SELECT * FROM `personnage` WHERE surnom IS NULL;

Exo 9:
SELECT * FROM `personnage` LIMIT 3;

Exo 10:
SELECT * FROM `personnage` LIMIT 2 OFFSET 3;