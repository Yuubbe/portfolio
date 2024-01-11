package iut.gon.gribouille.controleurs;

import java.io.File;
import java.net.URL;
import java.util.Map;
import java.util.ResourceBundle;

import iut.gon.gribouille.Dialogues;
import javafx.application.Platform;
import javafx.beans.InvalidationListener;
import javafx.beans.Observable;
import javafx.beans.value.ChangeListener;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.RadioButton;
import javafx.scene.control.RadioMenuItem;
import javafx.scene.control.ToggleGroup;

public class MenusControleur implements Initializable {

	public Controleur controleur;

    @FXML private ToggleGroup weight;
    @FXML private ToggleGroup outil;
    @FXML private RadioMenuItem outilCrayon;
    @FXML private RadioMenuItem outilEtoile;
    
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		this.outil.selectedToggleProperty().addListener((obs, oldValue, newValue) -> {			
			if (this.outil.getSelectedToggle().equals(this.outilCrayon)) {
				this.controleur.onCrayon();
			} else if (this.outil.getSelectedToggle().equals(this.outilEtoile)) {
				this.controleur.onEtoile();
			}
		});
		this.weight.selectedToggleProperty().addListener((obs, oldValue, newValue) -> {
			RadioMenuItem radioMenuItem = (RadioMenuItem) this.weight.getSelectedToggle();
			this.controleur.setEpaisseur(Integer.parseInt(radioMenuItem.getText()));
		});
	}

	public void setControleur(Controleur controleur) {
		this.controleur = controleur;
	}
	
	@FXML
	public void onQuitte(Event event) {
    	if (this.controleur.onQuitter()) {
    		Platform.exit();
    	}
	}
	
	@FXML
	public void onSauvegarder(Event event) {
		this.controleur.sauvegarder();
	}
	
	@FXML
	public void onCharger() {
		this.controleur.charge();
	}

}