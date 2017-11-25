{
//------------------------------------------------------------------

ALGORITHME Jeu_De_Loie

//------------------  Pre-requis  ----------------------------------

	//But: Faire un jeu de l'oie avec plusieurs regles :
			- Le joueur est caracterise par un nombre, qui indique sa place
			- Les cases vont de 1 à 66.
			- On avance de la somme du jet des deux dés.
			- Si on arrive sur la case 66, on gagne.
			- On recule du nombre de case en trop, si on arrive a plus de 66.
			- Il y a une oie toutes les 9 cases, qui double la somme des dés ( 9, 18, 27, 36, 45, 54) Sauf en 63.
			- Tête de mort en case 58 qui te fait retourner a la case 1.

	//Entrees: Appuyer sur Enter
	//Sorties: Indique la place, à chaque tour.

//----------------  Declaration des constantes  --------------------

CONST

	maxPlateau <- 66 : ENTIER
	désMin <- 2 : ENTIER
	désMax <- 12 : ENTIER


//--------------  Declaration des variables  -----------------------

VAR
	
	place : ENTIER 
	somme, diff : ENTIER
	
	

//-----------------  Corps du programme  ---------------------------

DEBUT
	
	place<- 1

	REPETER

		somme<- ALEATOIRE(désMax)
		somme<- somme+2
		ECRIRE ("Somme des dés: ", somme)


		place<-(place + somme)

		SI (place=58) alors //Case tete de mort
			place<-1
			ECRIRE("Vous avez touche la case tete de mort, retour a la base depart !")
		FINSI
			
		SI (place=9) ALORS
			place<-(place+somme)
		FINSI

		SI (place=18) ALORS
			place<-(place+somme)
		FINSI

		SI (place=27) ALORS
			place:=<-(place+somme)
		FINSI

		SI (place=36) ALORS
			place<-(place+somme)
		FINSI

		SI (place=45) ALORS
			place<-(place+somme)
		FINSI

		SI (place=54) ALORS
			place<-(place+somme)
		FINSI

		SI (place>66) ALORS
				diff<-(place-66)
				place<-(66-diff)
		FINSI

		ECRIRE ("Place actuelle : ", place)
		

	JUSQU'A (place=maxPlateau)  //Sortie de la boucle, donc le joueur est arrive place 66.
	
	SI (place=66) ALORS
		ECRIRE ('Vous avez gagne !')
	FINSI

FIN

//------------------------------------------------------------------}



PROGRAM Jeu_De_Loie;

USES crt, sysutils;

//----------------  Declaration des constantes  --------------------

CONST

	maxPlateau : INTEGER = 66;
	desMax : INTEGER = 10;

//--------------  Declaration des variables  -----------------------

VAR

	place : INTEGER; 			
	somme, diff : INTEGER;

//-----------------  Corps du programme  ---------------------------

BEGIN

	clrscr;

	place:= 1; //Début a la case 1.

	REPEAT

		Randomize;
		somme:=Random(desMax);
		somme:=(somme+2);
		writeln('Somme des des: ', somme); //Obtention de la somme des dés.


		place:=(place + somme);


			
		IF (place=9) THEN
			place:=(place+somme);

		IF (place=18) THEN
			place:=(place+somme);

		IF (place=27) THEN
			place:=(place+somme);

		IF (place=36) THEN
			place:=(place+somme);

		IF (place=45) THEN
			place:=(place+somme);

		IF (place=54) THEN
			place:=(place+somme);


		IF (place>66) THEN
			begin
				diff:=(place-66);
				place:=(66-diff);
			end;

		IF (place=58) THEN //Case tete de mort
			begin
				place:=1;
				writeln('Vous avez touche la case tete de mort, retour a la base depart !');
			end;



		writeln('Place actuelle : ', place);
		
		readln;

	UNTIL (place=maxPlateau);  //Sortie de la boucle, donc le joueur est arrive place 66.
	
	IF (place=66) THEN
		writeln('Vous avez gagne !');

	readln;

END.

//--------------------------------------------------