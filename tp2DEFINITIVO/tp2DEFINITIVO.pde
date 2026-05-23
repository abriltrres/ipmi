//Abril Agostina Torres comisión 1

//variables
PImage imagen1;
PImage imagen2;
PImage imagen3;
PFont fuente1;
PFont fuente2;
int posY;
float tamText;
int estado;
boolean botonIActivado;
float posicionXB1;
float posicionYB1;
float tamYB1;
float tamXB1;

void setup(){
  
  size (640, 480);
  
  estado=1; // Le doy estado 1 para q comienze con pag 1
  
  imagen1 = loadImage("elpadrino.jpeg");
  imagen2 = loadImage("manitoroja-removebg-preview.png");
  imagen3 = loadImage("amigos.jpeg");
  fuente1 = createFont("Corleone-Regular.otf",100);
  textFont(fuente1);

  fuente2= createFont ("BebasNeue-Regular.otf", 50);
  textFont(fuente2);
  
  posicionXB1 = 282;
  posicionYB1 = 411;
  tamXB1 = 85;
  tamYB1 = 34;

}

void draw(){
  
  if (estado == 1) {
    background(14, 14, 14);
    image(imagen1, 175, 50, 293, 441);//imagen inicio
    image(imagen2, 80, 30, 130, 130);//imagen inicio
    if (mouseX > posicionXB1 && mouseX < posicionXB1 + tamXB1 && mouseY > posicionYB1 && mouseY < posicionYB1 + tamYB1) { // Delimitacion del hover del boton, con variables definidas
    fill(255, 0, 0);
    } else {
    fill(90, 0, 0);
  }
    textFont(fuente2, 50);
    text("INIZIO", 279, 446);
    textFont(fuente1,90);
    text("The", 0, 100);
    textFont(fuente1,90);
    text("Godfather", 0, 180);
  }
  
  if (estado == 2) {
    background(14, 14, 14);
    image(imagen3, 175, 50, 293, 441);
    }
} 
  
  


void mousePressed(){
  if (mouseX > posicionXB1 && mouseX < posicionXB1 + tamXB1 && mouseY > posicionYB1 && mouseY < posicionYB1 + tamYB1) {
    estado = 2;
  }
  println(mouseX, mouseY);

  
}
