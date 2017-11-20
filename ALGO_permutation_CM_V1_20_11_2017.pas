{//------------------------------------------------------------------

ALGORITHME permutation

//------------------  Pre-requis  ----------------------------------

	//But: Permute 3 nombres saisis par l'utilisateur
	//Entrees: 3 nombres entiers
	//Sorties: 3 entiers permutés

//--------------  Declaration des variables  -----------------------

VAR 
	
	a, b, c, b : ENTIER 

//------------------------------------------------------------------

DEBUT 

	ECRIRE "Nombre a :"
	LIRE a
	ECRIRE "Nombre b :"
	LIRE b
	ECRIRE "Nombre c :"
	LIRE c
	
	d<-a
	a<-b
	b<-c
	c<-d   //Re affectation des variables, afin de les permuter. On utilise une variable intermediaire.

	ECRIRE "Voici a, b, c (dans l'ordre) maintenant : ", a,' ',b,' ',c

FIN

//------------------------------------------------------------------

	
}