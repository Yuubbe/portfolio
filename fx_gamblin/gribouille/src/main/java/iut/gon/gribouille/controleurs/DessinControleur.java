package iut.gon.gribouille.controleurs;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.canvas.Canvas;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Pane;
import javafx.scene.paint.Color;

import iut.gon.gribouille.modele.Point;

public class DessinControleur implements Initializable {

	public Controleur controleur;

    @FXML public Canvas canvas;
    @FXML public Pane pane;
    
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		this.canvas.widthProperty().bind(this.pane.widthProperty());
		this.canvas.heightProperty().bind(this.pane.heightProperty());
	}

	public void setControleur(Controleur controleur) {
		this.controleur = controleur;
	}

	public void efface() {
		this.canvas.getGraphicsContext2D().clearRect(0, 0, this.canvas.getWidth(), this.canvas.getHeight());
	}

	public void trace(double x1, double y1, double x2, double y2) {
		canvas.getGraphicsContext2D().strokeLine(x1, y1, x2, y2);
	}
	
	public void trace(double x1, double y1) {
		this.trace(x1, y1, x1, y1);
	}
	
	public void trace(Point point) {
		this.trace(point.getX(), point.getY());
	}
	
	public void setEpaisseur(int epaisseur) {
		this.canvas.getGraphicsContext2D().setLineWidth(epaisseur);
	}
	
	public void setCouleur(Color color) {
		this.canvas.getGraphicsContext2D().setStroke(color);
	}

	@FXML
	public void onMousePressed(MouseEvent event) {
		this.controleur.onMousePress(event);
	}

	@FXML
	public void onMouseMoved(MouseEvent event) {
		this.controleur.onMouseMove(event);
	}

	@FXML
	public void onMouseDragged(MouseEvent event) {
		this.controleur.onMouseDrag(event);
	}
}
