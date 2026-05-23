//Abril Agostina Torres comisión 1

//variables
PImage imagen2;
PImage imagen1;
PFont fuente1;
PFont fuente2;
int posY;
Float tamText;




void setup(){
  
  size (640, 480);
  imagen1 = loadImage("elpadrino.jpeg");
  imagen2 = loadImage("manitoroja-removebg-preview.png");
  
  fuente1 = createFont("Corleone-Regular.otf",100);
  textFont(fuente1);

  fuente2= createFont ("BebasNeue-Regular.otf", 50);
  textFont(fuente2);

}

void draw(){
  
  background(14, 14, 14);
  image(imagen1, 175, 50, 293, 441);//imagen inicio
  image(imagen2, 80, 30, 130, 130);//imagen inicio
  
 
  fill(90, 0, 0);
  textFont(fuente1,90);
  text("The", 0, 100);
  textFont(fuente1,90);
  text("Godfather", 0, 180);
  textFont(fuente2,50);
  text("INIZIO", 279, 446);
  text("INIZIO", 279, 446);
  
  
  
  
  
}

void mousePressed(){
  println(mouseX, mouseY);
  
}
