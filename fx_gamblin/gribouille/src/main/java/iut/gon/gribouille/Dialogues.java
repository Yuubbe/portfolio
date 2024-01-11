package iut.gon.gribouille;

import java.io.File;
import java.util.Optional;

import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TextInputDialog;
import javafx.stage.FileChooser;

public class Dialogues {
	
	public static boolean confirmation() {
		Alert confirm = new Alert(AlertType.CONFIRMATION, "Souhaitez-vous sauvegarder votre travail ?", ButtonType.YES, ButtonType.NO);
		Optional<ButtonType> confirmation = confirm.showAndWait();
		
		return confirmation.orElse(ButtonType.NO).equals(ButtonType.YES);
	}
	
	public static File sauverFichier() {
		FileChooser fileChooser = new FileChooser();
		return fileChooser.showSaveDialog(null);
	}
	
	public static File chargerFichier() {
		FileChooser fileChooser = new FileChooser();
		return fileChooser.showOpenDialog(null);
	}

}
