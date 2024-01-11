#include <stdio.h>
#include "ppm.h"

struct  imagePPM filtre_rouge(struct imagePPM p_img) {
   struct imagePPM neg= allouer_image_vide_PPM(p_img.nbl,  p_img.nbc, p_img.nbNiveau);
    for(int l=0; l< p_img.nbl ; l++){
		for(int c = 0; c < p_img.nbc; c++){
	    struct pixelRVB pix = getPixel(p_img, l, c);
	    pix.r = p_img.nbNiveau - pix.r;
	    pix.v = 100;
	    pix.b =4  ;
	    putPixel(&neg, pix, l, c);
		}	
    }
    return neg;
}

void rectangle(struct imagePPM * p_img, int l1, int c1, int l2, int c2){
    for(int l=l1; l< l2; l++){
		for(int c = c1; c <c2; c++){
			struct pixelRVB pix = getPixel(*p_img, l, c);
			pix.r = 255;
			pix.v = 255;
			pix.b = 255  ;
			putPixel(p_img, pix, l, c);
		}	
    }
}
	
void cadre(struct imagePPM * p_img, int l1, int c1, int l2, int c2){
    for(int l=l1; l< l2; l++){
		for(int c = c1; c <c2; c++){
			struct pixelRVB pix = getPixel(*p_img, l, c);
			if(l1 == l || l == l2-3 || c1 == c || c == c2-3)
			pix.r = 255;
			pix.v = 255;
			pix.b = 180;
			putPixel(p_img, pix, l, c);
		}	
    }
}
void filtre(struct imagePPM * p_img, int l1, int c1, int l2, int c2){
    for(int l=l1; l< l2; l++){
		for(int c = c1; c <c2; c++){
			struct pixelRVB pix = getPixel(*p_img, l, c);
			if(l1 == l || l == l2-1 || c1 == c || c == c2-1){
				pix.r = 255;
				pix.v = 255;
				pix.b = 255;
				putPixel(p_img, pix, l, c);
			}
		}	
    }
}
int main()
{
    struct imagePPM im;
    im=lire_image_PPM("FleurRVB.ppm");

    filtre(&im, 200, 200, 600, 600);
    ecrire_image_PPM(im, "cadreépais.ppm");   
    detruire_image(im);
    return 0;
}	
	

