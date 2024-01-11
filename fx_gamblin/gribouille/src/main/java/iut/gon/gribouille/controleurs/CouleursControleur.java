package iut.gon.gribouille.controleurs;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ColorPicker;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.VBox;
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.Color;

public class CouleursControleur implements Initializable {

	public Controleur controleur;
	
	@FXML private VBox vBox;
    @FXML private ColorPicker colorPicker;
    @FXML private Rectangle rectAqua;
    @FXML private Rectangle rectBlack;
    @FXML private Rectangle rectBlue; 
    @FXML private Rectangle rectWhite;
    @FXML private Rectangle rectYellow;
    
    private Rectangle selectedRectangle; 
    
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		
		this.selectRectangle(rectBlack);
		
		this.vBox.addEventHandler(MouseEvent.MOUSE_CLICKED, new EventHandler<MouseEvent>() {
			@Override
			public void handle(MouseEvent event) {
				if (event.getTarget() instanceof Rectangle) {
					Rectangle rectangle = (Rectangle) event.getTarget();
					controleur.setCouleur((Color) rectangle.getFill());
					
					selectRectangle(rectangle);
				}
			}
		});
	}
	
	public void selectRectangle(Rectangle rectangle) {
		rectangle.setArcWidth(10);
		rectangle.setArcHeight(10);
		rectangle.setStrokeWidth(5);
		
		if (this.selectedRectangle != null) {						
			this.selectedRectangle.setArcWidth(5);
			this.selectedRectangle.setArcHeight(5);
			this.selectedRectangle.setStrokeWidth(1);
		}
		this.selectedRectangle = rectangle;
	}
	
	public void setControleur(Controleur controleur) {
		this.controleur = controleur;
	}

}
