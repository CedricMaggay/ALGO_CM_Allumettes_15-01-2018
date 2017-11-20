{
//------------------------------------------------------------------

ALGORITHME intervalle

//------------------  Pre-requis  ----------------------------------

	//But: Demande un nombre entre 10 et 20, si le nombre est en dessous de 10, 
	//		le prog écrira "Il me faut un nombre plus grand",
	//		si c'est au dessus de 20, il écrira "Il me faut un nombre plus petit".
	//Entrees: 1 nombre entier
	//Sorties: L'etat en fonction du nombre reçu


//--------------  Declaration des variables  -----------------------

VAR 
	
	ch : ENTIER 

//-----------------  Corps du programme  ---------------------------

DEBUT

	ECRIRE "Veuillez entrer un nombre entre 10 et 20 : "
	LIRE ch

	SI (10>ch) ET (ch<20) ALORS  //
		ECRIRE "OUI"
	FINSI 
	
	SI (ch<10) ALORS 
		ECRIRE "Il me faut un nombre plus grand"
	FINSI

	SI (ch>20) ALORS 
		ECRIRE "Il me faut un nombre plus petit"
	FINSI

FIN

//------------------------------------------------------------------

}

