#include <stdio.h>
#include <stdlib.h>
#include "ppm.h"

/**
 * affiche une erreur (sur stderr) et termine le programme.
 */
void erreur (char *s)
{
    fprintf(stderr, "%s\n",s);
    exit(1);
}

/**
 * ouvre le fichier dont le nom est en paramètre et crée une image correspondante
 * @return la struct image correspondant au fichier
 **/
struct imagePPM lire_image_PPM(char nom[]){

    
    FILE *f;
    struct imagePPM im;
    
    if ((f=fopen(nom,"r"))==NULL){
		fprintf(stderr, "Pb ouverture fichier %s\n", nom);
		exit(1);
    }

    char ligne[70];
    // on commence forcement par P3
    if ( (fgets(ligne, 70, f) == NULL)  || ( ligne[0]!='P' && ligne[1]!='3' && ligne[2]!='\n')) 
	erreur("Pb lecture P2\n");

    // commentaires
    // on ne considere que les fichiers avec 1 seule ligne de commentaires
    if (fgets(ligne, 128, f) == NULL)
	erreur("lecture commentaires");
    
    fscanf(f,"%d", &(im.nbc));
    fscanf(f,"%d", &(im.nbl));
    fscanf(f,"%d", &(im.nbNiveau));

    printf("Dimensions de l'image: %d %d \n",im.nbc, im.nbl);

    if ((im.img=malloc(im.nbc*im.nbl*sizeof(struct pixelRVB )))==NULL)
	erreur("Pballocation mémoire\n");

    for(int i=0; i< im.nbc * im.nbl; i++){
	// utilisation d'un unsigned int pour éviter le warning
	// format specifies type 'unsigned int *' but the argument has type 'unsigned char *'
	unsigned int r,v,b;

	fscanf(f,"%d %d %d ",&r, &v, &b);
	im.img[i].r = r;
	im.img[i].v = v;
	im.img[i].b = b;
    }
    return im;
}

/**
 * enregistre une struct image dans un fichier, pour affichage.
 **/ 
void ecrire_image_PPM(struct imagePPM im, char nom[]){

    FILE *f;
    if ((f=fopen(nom,"w"))==NULL)
	erreur("Pb ouverture fichier \n");

    fprintf(f,"P3\n");
    fprintf(f,"#\n");
    
    fprintf(f,"%d ", im.nbc);
    fprintf(f,"%d\n", im.nbl);
    fprintf(f,"%d\n", im.nbNiveau);
    
    for(int i=0; i< im.nbc*im.nbl; i++){
	fprintf(f,"%d %d %d\n", im.img[i].r, im.img[i].v, im.img[i].b);
    }    
}

/**
 * récupère le pixel à la position donnée.
 */
struct pixelRVB getPixel(struct imagePPM img, int ligne, int col){
	return img.img[ligne*img.nbc+col];
}

void putPixel(struct imagePPM *p_img, struct pixelRVB pix, int ligne, int col){
	p_img->img[ligne*p_img->nbc+col] = pix;
}

/**
 * crée une image vide
 **/
struct imagePPM allouer_image_vide_PPM(int nbLig, int nbCol, int nbNiveau){

    if (nbNiveau>65536)
	erreur ("nombre de niveaux par pixel trop élévé");
    
    struct imagePPM im;
    im.nbl=nbLig;
    im.nbc=nbCol;
    im.nbNiveau=nbNiveau;
    if ((im.img=malloc(im.nbc*im.nbl*sizeof(struct pixelRVB )))==NULL)
	erreur("Pb  allocation mémoire\n");
    return im;
}

/**
 * libère la mémoire réservée lors de la création de l'image
 **/
void detruire_image(struct imagePPM img){
    free(img.img);
}


