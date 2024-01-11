package iut.gon.gribouille.controleurs;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.shape.Rectangle;

public class StatutControleur implements Initializable {

	public Controleur controleur;

    @FXML public Label labStroke;
    @FXML public Label labX;
    @FXML public Label labY;
    @FXML public Label labOutil;
    @FXML public Rectangle rectCouleur;
    
	@Override
	public void initialize(URL location, ResourceBundle resources) {
	}

	public void setControleur(Controleur controleur) {
		this.controleur = controleur;
		
		this.labStroke.textProperty().bind(this.controleur.epaisseur.asString());
		this.rectCouleur.fillProperty().bind(this.controleur.couleur);
	}

}
