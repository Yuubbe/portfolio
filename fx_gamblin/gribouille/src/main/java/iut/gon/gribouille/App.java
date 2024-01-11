package iut.gon.gribouille;

import javafx.application.Application;
import javafx.beans.binding.Bindings;
import javafx.beans.binding.StringBinding;
import javafx.beans.property.Property;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

import java.io.IOException;

import iut.gon.gribouille.controleurs.Controleur;
import iut.gon.gribouille.modele.Dessin;

/**
 * JavaFX App
 */
public class App extends Application {

    private static Scene scene;

    @Override
    public void start(Stage stage) throws IOException {
    	Dessin dessin = new Dessin();
    	Controleur controleur = new Controleur(dessin);
    	
        scene = new Scene(loadFXML("Gribouille", controleur), 640, 480);

        stage.setScene(scene);
        StringBinding stringBinding = Bindings.when(dessin.estModifieProperty())
							        	      .then(Bindings.concat("*", dessin.nomDuFichierProperty()))
							        	      .otherwise(dessin.nomDuFichierProperty());
        stage.titleProperty().bind(stringBinding);
        stage.show();
        
		stage.setOnCloseRequest(event -> {
			event.consume();
			controleur.menusController.onQuitte(event);
		});
		
		stage.addEventHandler(KeyEvent.KEY_PRESSED, event -> {
			switch (event.getText()) {
				// Effacer
				case "e": controleur.onEfface(); break;
				// Outil
				case "c": controleur.onCrayon(); break;
				case "x": controleur.onEtoile(); break;
				// Épaisseur
				case "&": controleur.setEpaisseur(1);  break;
				case "é": controleur.setEpaisseur(2);  break;
				case "\"": controleur.setEpaisseur(3); break;
				case "'": controleur.setEpaisseur(4);  break;
				case "(": controleur.setEpaisseur(5);  break;
				case "-": controleur.setEpaisseur(6);  break;
				case "è": controleur.setEpaisseur(7);  break;
				case "_": controleur.setEpaisseur(8);  break;
				case "ç": controleur.setEpaisseur(9);  break;
				// Couleur
				case "1": controleur.setCouleur(Color.RED);    break;
				case "2": controleur.setCouleur(Color.LIME);   break;     
				case "3": controleur.setCouleur(Color.BLUE);   break;
				case "4": controleur.setCouleur(Color.CYAN);   break;
				case "5": controleur.setCouleur(Color.PINK);   break;
				case "6": controleur.setCouleur(Color.YELLOW); break;
				case "7": controleur.setCouleur(Color.BLACK);  break;
				case "8": controleur.setCouleur(Color.WHITE);  break;
			}
		});
    }

    static void setRoot(String fxml) throws IOException {
        scene.setRoot(loadFXML(fxml));
    }

    private static Parent loadFXML(String filename) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(App.class.getResource(filename + ".fxml"));
        return fxmlLoader.load();
    }

    private static Parent loadFXML(String filename, Object controller) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(App.class.getResource(filename + ".fxml"));
        fxmlLoader.setController(controller);
        return fxmlLoader.load();
    }

    public static void main(String[] args) {
        launch();
    }

}