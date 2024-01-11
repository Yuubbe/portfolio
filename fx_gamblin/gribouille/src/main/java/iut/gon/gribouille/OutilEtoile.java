package iut.gon.gribouille;

import iut.gon.gribouille.controleurs.Controleur;
import iut.gon.gribouille.modele.Etoile;
import iut.gon.gribouille.modele.Figure;
import iut.gon.gribouille.modele.Point;
import javafx.scene.input.MouseEvent;

public class OutilEtoile extends Outil {

	public OutilEtoile(Controleur controleur) {
		super(controleur);
	}
	
	@Override
	public void onMousePress(MouseEvent event) {
		this.controleur.prevX.setValue(event.getX());
		this.controleur.prevY.setValue(event.getY());
		
		this.controleur.figureCourante = new Etoile(this.controleur.epaisseur.get(), this.controleur.couleur.get().toString(), event.getX(), event.getY());
		this.controleur.dessin.addFigure(this.controleur.figureCourante);
		
		this.controleur.dessinController.setEpaisseur(this.controleur.epaisseur.intValue());
		this.controleur.dessinController.setCouleur(this.controleur.couleur.get());
		this.controleur.dessinController.trace(event.getX(), event.getY(), event.getX(), event.getY());
	}

	@Override
	public void onMouseDrag(MouseEvent event) {
		this.controleur.prevX.setValue(event.getX());
		this.controleur.prevY.setValue(event.getY());
		
		Etoile etoile = (Etoile) this.controleur.figureCourante;
		
		double cx = etoile.getCentre().getX(),
			   cy = etoile.getCentre().getY();
		
		double dx = event.getX() - cx,
			   dy = event.getY() - cy;

		Point[] points = {
			new Point(cx + dx, cy + dy),
			new Point(cx - dy, cy + dx),
			new Point(cx + dy, cy - dx),
			new Point(cx - dx, cy - dy)
		};

		this.controleur.dessinController.setEpaisseur(this.controleur.epaisseur.intValue());
		this.controleur.dessinController.setCouleur(this.controleur.couleur.get());

		this.controleur.figureCourante.changeCouleur(this.controleur.couleur.get().toString());
		this.controleur.figureCourante.changeEpaisseur(this.controleur.epaisseur.intValue());
		// Trace de l'étoile
		for (Point point : points) {
			this.controleur.figureCourante.addPoint(point);
			this.controleur.dessinController.trace(point);
		}
	}

}
