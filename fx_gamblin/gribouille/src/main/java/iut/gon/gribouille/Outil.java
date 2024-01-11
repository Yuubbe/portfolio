package iut.gon.gribouille;

import iut.gon.gribouille.controleurs.Controleur;
import javafx.scene.input.MouseEvent;

public abstract class Outil {
	
	protected Controleur controleur;
	
	public Outil(Controleur controleur) {
		this.controleur = controleur;
	}

	abstract public void onMousePress(MouseEvent event);
	
	abstract public void onMouseDrag(MouseEvent event);
}
