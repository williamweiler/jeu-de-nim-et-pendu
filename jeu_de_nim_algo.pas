{Algo Jeux de nim

//but:faire un programme qui reproduit le jeu de nim
//entree:21 allumettes
//sortie:un gagnant et un perdant


procedure menu //presentation menu

DEBUT
	
	ECRIRE ('Bienvenu dans le jeu de nim ! ')


	ECRIRE ('Devellopper par WEILER William')

	ECRIRE ('Etudiant a LUDUS ACADEMIE')
FIN

procedure joueurs (var nom1:CHAINE var nom2:CHAINE)
DEBUT

	REPETER
		DEBUT
			ECRIRE( Entrez le nom du premier joueur )
			LIRE(nom1)
		FIN
	JUSQU'A (LONGUEUR(nom1)>1) & (LONGUEUR(nom1)<8)

	REPETER
		DEBUT
			ECRIRE( Entrez le nom du deuxieme joueur )
			readln(nom2);
		FIN
	JUSQU'A (LONGUEUR(nom1)>1) & (LONGUEUR(nom1)<8)
FIN


procedure action1 (nom1:CHAINE nom2:CHAINE  var nbretire:ENTIER  var allumettes:ENTIER)


DEBUT


		ECRIRE (c''est au joueur ', nom1 ,'' de jouer)

		ECRIRE ( entre  le nombre d''allumettes que vous voulez nbretirer de 1 a 3)
REPETER
		allumettes:=allumettes-nbretire

			DEBUT

	 			SI nbretire<=3 ALORS

				ECIRE ( il reste ' , allumettes, '  allumettes )

				SI (nbretire>allumettes) OU (nbretire>3)   ALORS

				ECRIRE( il ne reste pas assez d''allumettes )

			FIN


		LIRE (nbretire)

JUSQU'A (nbretire>3) OU (nbretire <0)  OU (nbretire>allumettes) OU (allumettes =0)

FIN


procedure action2 (nom2:CHAINE nom1:CHAINE   var nbretire:ENTIER  var allumettes:ENTIER)

DEBUT



    	ECRIRE (cest au joueur  , nom2 , de jouer)

		ECRIRE ( entre  le nombre d''allumettes que vous voulez nbretirer de 1 a 3)
REPETER
		allumettes:=allumettes-nbretire
			DEBUT

	 			SI nbretire<=3 ALORS

				ECRIRE ( il reste ' , allumettes, '  allumettes)

				SI (nbretire>allumettes) OU (nbretire>3) ALORS

				ECRIRE ( il ne reste pas assez d''allumettes )


			FIN



			LIRE (nbretire);

JUSQU'A (nbretire>3) OU (nbretire <0) OU (nbretire>allumettes) OU (allumettes =0)
			
FIN


var
	allumettes,nbretire:ENTIER
	nom1,nom2:CHAINE
DEBUT
	allumettes:=21

	menu

	joueurs


	REPETER
	DEBUT
		action1(nom1,nom2,nbretire,allumettes)
		action2(nom2,nom1,nbretire,allumettes)
	FIN
	JUSQU'A (allumettes =0) OU (allumettes<0)

	ECRIRE (' a perdu.')
	LIRE
FIN



}

program le_jeu_de_nim;

//but:faire un programme qui reproduit le jeu de nim
//entree:21 allumettes
//sortie:un gagnant et un perdant





uses crt;





procedure menu;


BEGIN



	writeln ('Bienvenu dans le jeu de nim ! ');


	writeln ('Devellopper par WEILER William');

	writeln('Etudiant a LUDUS ACADEMIE');



END;

procedure joueurs (var nom1:string; var nom2:string);
BEGIN

	REPEAT
		BEGIN
			writeln('Entrez le nom du premier joueur');
			readln(nom1);
		END;
	UNTIL (length(nom1)>0) AND (length(nom1)<8);

	REPEAT
		BEGIN
			writeln('Entrez le nom du deuxieme joueur');
			readln(nom2);
		END;
	UNTIL (length(nom1)>0) AND (length(nom1)<8);
END;


procedure action1 (nom1:string; nom2:string;  var nbretire:integer;  var allumettes:integer);


BEGIN


		writeln ('c''est au joueur ', nom1 ,' de jouer');

		writeln ('entre  le nombre d''allumettes que vous voulez nbretirer de 1 a 3');
		
REPEAT
		allumettes:=allumettes-nbretire;

			BEGIN

	 			if nbretire<=3 then

				writeln ('il reste ' , allumettes, '  allumettes');

				IF (nbretire>allumettes) or (nbretire>3)   then

				writeln('il ne reste pas assez d''allumettes');

			END;


		readln (nbretire);

UNTIL (nbretire>3) OR (nbretire <0)  OR (nbretire>allumettes) OR (allumettes =0);




END;
procedure action2 (nom2:string; nom1:string;   var nbretire:integer;  var allumettes:integer) ;

BEGIN



    	writeln ('cest au joueur ' , nom2 , ' de jouer');

		writeln ('entre  le nombre d''allumettes que vous voulez nbretirer de 1 a 3');

		allumettes:=allumettes-nbretire;
REPEAT
			BEGIN

	 			if nbretire<=3 then

				writeln ('il reste ' , allumettes, '  allumettes');

				IF (nbretire>allumettes) or (nbretire>3) then

				writeln('il ne reste pas assez d''allumettes');


			END;



			readln (nbretire);

UNTIL (nbretire>3) OR (nbretire <0) OR (nbretire>allumettes) OR (allumettes =0);
			
END;


var
	allumettes,nbretire:integer;
	nom1,nom2:string;
BEGIN
	allumettes:=21;
	clrscr;

	menu;

	joueurs(nom1,nom2);




	REPEAT
	BEGIN
		action1(nom1,nom2,nbretire,allumettes);
		action2(nom2,nom1,nbretire,allumettes);
	END;
	UNTIL (allumettes =0) OR (allumettes<0);

	writeln(' a perdu.');
	readln;
END.



