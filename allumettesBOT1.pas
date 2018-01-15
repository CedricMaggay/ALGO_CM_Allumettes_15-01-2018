{ALGORITHME allumettesBOT1

	But : un bot joue contre le joueur
	Entrées : Le nombre d''allumettes a retirer
	Sorties : Gagner ou perdre


VAR

	debut, total, pick : ENTIER

DEBUT

	REPETER 
		REPETER
			bonChoix1<-FAUX
			ECRIRE "Joueur, combien retirez vous d'allumetes ?"
			LIRE choix1

			SI (choix1>3) OU (choix<1) ALORS
				ECRIRE "Vous ne pouvez tirer qu'entre 1 et 3 allumettes"
			SINON bonChoix1<-VRAI
			FINSI  

		JUSQU'A (bonChoix1=VRAI)  //Verification du choix du joueur

	total<-total-pick
	ECRIRE "VOILA CE QUE ÇA DONNE :, total

	x<-ALEATOIRE(max)+1
	ECRIRE "Je vais prendre .. mmh ..", x
	total<-total-x
	JUSQU'A (total<=4)  //A 4 allumettes la partie est pseudo-finie, car on peut coincer l'adversaire.

	ECRIRE "BIEN JOUE"

FIN}


PROGRAM allumettesBOT1;

USES crt, sysutils;

VAR

	debut, total, pick, X, max, choix1 : INTEGER;
	bonChoix1 : BOOLEAN;

BEGIN

	clrscr;
	Randomize;
	total:=21;
	max:=3;


	REPEAT

		REPEAT

			bonChoix1:=false;
			writeln('Joueur, combien retirez vous d''allumettes ?');
			read(choix1);

			IF (choix1>3) OR (choix1<1) THEN
				writeln('Vous ne pouvez tirer qu''entre 1 et 3 allumettes')
			ELSE bonChoix1:=TRUE;

		UNTIL (bonChoix1=true);  //Boucle de verifiction du choix du joueur

		total:=(total-pick);
		writeln('VOILA CE QUE CA DONNE : ', total);

		readln;

		X:=Random(max)+1;
		writeln ('Je vais en prendre .. mmh .. ', X);
		readln;

		total:=(total-X);

	UNTIL (total<=4);   //A 4 allumettes la partie est pseudo-finie, car on peut coincer l'adversaire.
	writeln('BIEN JOUE');
	readln;

	readln;

END.


