//Abril Agostina Torres comisión 1

//variables
PImage imagen1,imagen2,imagen3,imagen4,imagen5;
PFont fuente1,fuente2;
int posY;
float tamText;
int pantalla;
boolean botonIActivado;
float posicionXBV, posicionYBV, tamXBV, tamYBV;
float posicionXB1, posicionYB1, tamXB1, tamYB1;
float posicionXB2, posicionYB2, tamXB2, tamYB2;
float posicionXB3, posicionYB3, tamXB3, tamYB3;
float posicionXB4, posicionYB4, tamXB4, tamYB4;

void setup(){
  
  size (640, 480);
  
  pantalla = 4; // Le doy estado 1 para q comienze con pag 1
  
  imagen1 = loadImage("elpadrino.jpeg");
  imagen2 = loadImage("manitoroja-removebg-preview.png");
  imagen3 = loadImage("famigliaa.jpeg");
  imagen4 = loadImage("vendetta.jpeg");
  
  fuente1 = createFont("Corleone-Regular.otf",100);
  textFont(fuente1);

  fuente2= createFont ("BebasNeue-Regular.otf", 50);
  textFont(fuente2);
  //boton 1
  posicionXB1 = 282;
  posicionYB1 = 411;
  tamXB1 = 85;
  tamYB1 = 34;
  // boton 2 FAMIGLIA
  posicionXB2 = 290;
  posicionYB2 = 150;
  tamXB2 = 150;
  tamYB2 = 50;
  
  // boton 3 VENDETTA
  posicionXB3 = 290;
  posicionYB3 = 250;
  tamXB3 = 150;
  tamYB3 = 50;
  
  // boton 4 EREDITÀ
  posicionXB4 = 290;
  posicionYB4 = 350;
  tamXB4 = 150;
  tamYB4 = 50;
  
  //volver boton
  
  posicionXBV = 550;
  posicionYBV = 440;
  tamXBV = 80;
  tamYBV = 30;
}

void draw(){
  
  
  if (pantalla == 1) {
    background(14, 14, 14);
    image(imagen1, 175, 50, 293, 441); //imagen inicio
    image(imagen2, 80, 30, 130, 130); //imagen inicio
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
    
  if (pantalla == 2){
    background(0, 0, 0);
    textFont(fuente1, 90);
    fill(90, 0, 0);
    text("The", 0, 100);
    text("Godfather", 0, 180);
    textFont(fuente2, 50);
    
    if (mouseX > posicionXB2 && mouseX < posicionXB2 + tamXB2 && mouseY > posicionYB2 && mouseY < posicionYB2 + tamYB2) {
      fill(255, 0, 0);
    } else {
      fill(90, 0, 0);
    }
    textFont(fuente2, 50);
    text("FAMIGLIA", posicionXB2, posicionYB2 + tamYB2);
  
    // Botón VENDETTA
    if (mouseX > posicionXB3 && mouseX < posicionXB3 + tamXB3 && mouseY > posicionYB3 && mouseY < posicionYB3 + tamYB3) {
      fill(255, 0, 0);
    } else {
      fill(90, 0, 0);
    }
    text("VENDETTA", posicionXB3, posicionYB3 + tamYB3);
  
    // Botón EREDITÀ
    if (mouseX > posicionXB4 && mouseX < posicionXB4 + tamXB4 && mouseY > posicionYB4 && mouseY < posicionYB4 + tamYB4){
      fill(255, 0, 0);
    } else {
      fill(90, 0, 0);
    }
    text("EREDITÀ", posicionXB4, posicionYB4 + tamYB4);
  }
  
  
  
  // famiglia
  if (pantalla == 3){
    background (0,0,0,0);
    image(imagen3, 0, 0, 330, 400);
    textFont(fuente2, 30);
    text("Familia Corleone", 30, 450);
    textFont(fuente2, 15);
    text("Una familia inmigrante de italia ahora en Nueva york.\nfueron construyendo su poder a partir de sus valores\nde familia, honor y lealtad convirtiendose así en una de las\nfamilias mas influyentes de todas las mafias italianas que\nasedian Nueva york en ese momento\n\n- Vito Corleone, la cabeza de la familia tuvo 4 hijos\n\n- El mayor Santino corleone\n\n-Fredo Corleone, el segundo hijo\n\n- Michael Corleone, su tercer hijo y ultimo hijo varon\n\n- Connie Corleone la menor de 3 hermanos\ny la unica hija mujer.", 338, 28);
   }
   
   
  // vendetta
  if (pantalla == 4){
    background (0,0,0,0);
    image(imagen4, 0, 0, 650, 300);
    textFont(fuente2, 15);
    text("Michael era el hijo menor,\nel unico que habia escapado\nde la mafia. Cuando su padre\ncayo herido, algo cambio en el.\n\nLa venganza no fue impulsiva,\nfue fria y calculada.\nEl chico inocente nunca\nmas volvio a existir.",20,314);
   }
   
   
  // eredita
  if (pantalla == 5){
    background (0,0,0,0);
    image(imagen1, 175, 50, 293, 441);
   }
   
   
   
   
   
  //Volver
  if (pantalla != 1) {
    textFont(fuente2, 25);
    if (mouseX > posicionXBV && mouseX < posicionXBV + tamXBV && mouseY > posicionYBV && mouseY < posicionYBV + tamYBV) {
      fill(255, 0, 0);
    } else {
      fill(90, 0, 0);
    }
    text("VOLVER", posicionXBV, posicionYBV + tamYBV);
  }

} //fin de draw
  
  


void mousePressed(){
  if (mouseX > posicionXB1 && mouseX < posicionXB1 + tamXB1 && mouseY > posicionYB1 && mouseY < posicionYB1 + tamYB1) {
    pantalla = 2;
  }
  
  if (mouseX > posicionXB2 && mouseX < posicionXB2 + tamXB1 && mouseY > posicionYB2 && mouseY < posicionYB2 + tamYB2) {
    pantalla = 3;
  }
  if (mouseX > posicionXB3 && mouseX < posicionXB3 + tamXB3 && mouseY > posicionYB3 && mouseY < posicionYB3 + tamYB3) {
    pantalla = 4;
  } 
  if (mouseX > posicionXB4 && mouseX < posicionXB4 + tamXB4 && mouseY > posicionYB4 && mouseY < posicionYB4 + tamYB4) {
    pantalla = 5;
  } 
 if (pantalla != 1) {
  if (mouseX > posicionXBV && mouseX < posicionXBV + tamXBV && mouseY > posicionYBV && mouseY < posicionYBV + tamYBV) {
    if (pantalla == 2) {
      pantalla = 1;
    } else {
      pantalla = 2;
      }
    }
  }
  println(mouseX, mouseY);
}
