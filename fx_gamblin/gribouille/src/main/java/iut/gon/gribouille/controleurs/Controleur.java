package iut.gon.gribouille.controleurs;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;

import iut.gon.gribouille.Dialogues;
import iut.gon.gribouille.Outil;
import iut.gon.gribouille.OutilCrayon;
import iut.gon.gribouille.OutilEtoile;
import iut.gon.gribouille.modele.Dessin;
import iut.gon.gribouille.modele.Etoile;
import iut.gon.gribouille.modele.Figure;
import iut.gon.gribouille.modele.Point;
import iut.gon.gribouille.modele.Trace;
import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.paint.Color;

public class Controleur implements Initializable {

	public final Dessin dessin;
	public Figure figureCourante;
	public Outil outil;
	public SimpleDoubleProperty prevX = new SimpleDoubleProperty(0.0);
	public SimpleDoubleProperty prevY = new SimpleDoubleProperty(0.0);
	public final SimpleObjectProperty<Color> couleur = new SimpleObjectProperty<Color>(Color.BLACK);
	public final SimpleIntegerProperty epaisseur = new SimpleIntegerProperty(3);

	@FXML public MenusControleur menusController;
	@FXML public CouleursControleur couleursController;
	@FXML public DessinControleur dessinController;
	@FXML public StatutControleur statutController;
	
	@FXML public BorderPane borderPane;
	
	public Controleur(Dessin dessin) {
		this.dessin = dessin;
		this.outil = new OutilCrayon(this);
	}
    
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		this.couleursController.setControleur(this);
		this.dessinController.setControleur(this);
		this.menusController.setControleur(this);
		this.statutController.setControleur(this);
		
		this.dessinController.pane.widthProperty().addListener(this::onSizeChange);
		this.dessinController.pane.heightProperty().addListener(this::onSizeChange);
	}
	
	public void dessine() {
		for (Figure figure : this.dessin.getFigures()) {

			this.dessinController.setEpaisseur(figure.getEpaisseur());
			this.dessinController.setCouleur(Color.valueOf(figure.getCouleur()));
			
			if (figure instanceof Trace) {
				Trace trace = (Trace) figure;
				Point point = trace.getPoints().get(0);

				this.dessinController.trace(point);
			} else if (figure instanceof Etoile) {
				Etoile etoile = (Etoile) figure;

				for (Point point : etoile.getPoints()) {
					this.dessinController.trace(point);
				}
			}
		}
	}

	public void onMousePress(MouseEvent event) {
		this.outil.onMousePress(event);
	}
	
	public void onMouseMove(MouseEvent event) {
		this.prevX.setValue(event.getX());
		this.prevY.setValue(event.getY());
		
		this.statutController.labX.setText(String.valueOf(this.prevX.getValue().intValue()));
		this.statutController.labY.setText(String.valueOf(this.prevY.getValue().intValue()));
	}
	
	public void onMouseDrag(MouseEvent event) {
		this.outil.onMouseDrag(event);
		
		this.statutController.labX.setText(String.valueOf(this.prevX.getValue().intValue()));
		this.statutController.labY.setText(String.valueOf(this.prevY.getValue().intValue()));
	}
	
	public void onSizeChange(Object e) {
		this.dessinController.efface();
		this.dessine();
	}

	public boolean onQuitter() {
		if (!this.dessin.estModifieProperty().get()) {
			return true;
		} else {			
			boolean confirmation = Dialogues.confirmation();
			if (confirmation) {
				try {					
					return this.sauvegarder();
				} catch (Exception err) {
					return false;
				}
			}
			return true;
		}
	}
	
	public void onCrayon() {
		this.outil = new OutilCrayon(this);
		this.statutController.labOutil.setText("Crayon");
	}
	
	public void onEtoile() {
		this.outil = new OutilEtoile(this);
		this.statutController.labOutil.setText("Étoile");
	}
	
	public void onEfface() {
		this.dessin.getFigures().clear();
		this.dessinController.efface();
	}

	public void setEpaisseur(int epaisseur) {
		this.epaisseur.set(epaisseur);
	}

	public void setCouleur(Color color) {
		this.couleur.set(color);		
	}
	
	public boolean sauvegarder() {
		File fichier = Dialogues.sauverFichier();
		if (fichier != null) {			
			this.dessin.setNomDuFichier(fichier.getName());
			this.dessin.sauveSous(fichier.getAbsolutePath());
			return true;
		}
		return false;
	}

	public boolean charge() {
		File fichier = Dialogues.chargerFichier();
		if (fichier != null) {			
			this.dessin.setNomDuFichier(fichier.getName());
			this.onEfface();
			this.dessin.charge(fichier.getAbsolutePath());
			this.dessine();
			return true;
		}
		return false;
	}

}
