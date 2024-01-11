package iut.gon.gribouille;

import iut.gon.gribouille.controleurs.Controleur;
import iut.gon.gribouille.modele.Trace;
import javafx.scene.input.MouseEvent;

public class OutilCrayon extends Outil {
	
	public OutilCrayon(Controleur controleur) {
		super(controleur);
	}

	@Override
	public void onMousePress(MouseEvent event) {
		this.controleur.prevX.setValue(event.getX());
		this.controleur.prevY.setValue(event.getY());
	}

	@Override
	public void onMouseDrag(MouseEvent event) {
		this.controleur.prevX.setValue(event.getX());
		this.controleur.prevY.setValue(event.getY());
		
		this.controleur.figureCourante = new Trace(this.controleur.epaisseur.get(), this.controleur.couleur.get().toString(), event.getX(), event.getY());
		this.controleur.dessin.addFigure(this.controleur.figureCourante);
		
		this.controleur.dessinController.setEpaisseur(this.controleur.epaisseur.intValue());
		this.controleur.dessinController.setCouleur(this.controleur.couleur.get());
		this.controleur.dessinController.trace(event.getX(), event.getY(), event.getX(), event.getY());
	}

}
