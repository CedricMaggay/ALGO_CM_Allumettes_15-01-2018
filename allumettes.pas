{ALGORITHME allumettes

	//But : Le jeu des allumettes
	//Entrées : 1, 2 ou 3 allumettes a retirer
	//Sorties : gagner ou perdre avec

VAR
	
	total, choix1, choix2  : ENTIER
	joueur1, joueur2, bonChoix1, bonChoix2, fin : BOOLEEN

DEBUT
	
	total<- 21

	REPETER

	/// Tour Joueur 1 ///

		REPETER

			bonChoix1<- FAUX
			ECRIRE "Joueur 1, combien retirer vous d'allumettes ?"
			LIRE choix1

			SI (choix1>3) OU (choix1<1) ALORS
				ECRIRE "Vous ne pouvez tirer qu'entre 1 et 3 allumettes"
			SINON bonChoix1<- VRAI
			FINSI
			
			SI (bonChoix1 = VRAI) ALORS
				total<-(total-choix1)
				ECRIRE "Total : ", total
			FINSI

		JUSQU'A (choix1>=1) ET (choix1<=3)

	/// Fin du tour du joueur 1 ///


	/// Tour Joueur 2 ///

		REPETER

			bonChoix2<- FAUX
			ECRIRE "Joueur 2, combien retirez vous d'allumettes ?"
			LIRE choix2

			SI (choix2>3) OU (choix2<1) ALORS
				ECRIRE "Vous ne pouvez tirer qu'entre 1 et 3 allumettes."
			SINON (bonchoix2<- VRAI)
			FINSI

			SI (bonChoix2 = VRAI) ALORS
				total<-(total-choix2)
				ECRIRE "Total :", total
			FINSI
		
		JUSQU'A (choix2>=1) ET (choix2<=3)

	/// Fin tour du joueur 2 ///

	JUSQU'A (fin = VRAI) OU (total<5) 

	SI (total<5) ALORS 
		ECRIRE "Vous avez gagné"
	FINSI


FIN
	
}


PROGRAM allumettes;

USES crt, sysutils;
VAR

	total, choix1, choix2  : INTEGER;
	joueur1, joueur2, bonChoix1, bonChoix2, fin : BOOLEAN;

BEGIN

	clrscr;

	total:=21;

	REPEAT

		////// Tour Joueur 1 //////

		REPEAT
		bonChoix1:=false;
		writeln('Joueur 1, combien retirez vous d''allumettes ?');
		read(choix1);


		IF (choix1>3) OR (choix1<1) THEN
			writeln('Vous ne pouvez tirer qu''entre 1 et 3 allumettes')
		ELSE bonChoix1:=TRUE;

		readln;

		IF (bonChoix1=true) THEN
			begin
			total:=(total-choix1);
			writeln('Total : ',total);
			end;

		UNTIL (choix1>=1) AND (choix1<=3);

		///// Fin du tour du joueur 1 /////

		////// Joueur 2 tour. //////

		REPEAT
		bonChoix2:=false;
		writeln('Joueur 2, combien retirez vous d''allumettes ?');
		read(choix2);


		IF (choix2>3) OR (choix1<1) THEN
			writeln('Vous ne pouvez tirer qu''entre 1 et 3 allumettes')
		ELSE bonChoix2:=TRUE;

		IF (bonChoix2=true) THEN
			begin
			total:=(total-choix2);
			writeln('Total : ',total);
			end;

		readln;
		UNTIL (choix2>=1) AND (choix2<=3);

		////// Fin du tour du joueur 2 //////

	UNTIL (fin=true) OR (total<5);

	IF (total<5) THEN
		writeln('Vous avez gagne !');

	writeln('Vous avez fini la partie');

	readln;

END.