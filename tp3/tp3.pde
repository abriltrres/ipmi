//https://youtu.be/2jXZKc4S7Vk?si=BIuv2m92_YHcTSWc

//abril torres

PImage img;

int tamCelda = 8;
float desplazamientoX = 0;
float anguloChico = 0;
color colorAmarillo = color(250, 254, 7);
color colorNegro = color(0);
color colorAmarilloChico = color(250, 254, 7);
color colorNegroChico = color(0);

void setup() {
  size(800, 400);

  img = loadImage("29.png");
}

void draw() {
  background(0);

  image(img, 0, 0, 400, 400);
//lineas gral.
  stroke(255, 0, 0);
  line(400, 0, 400, height);

  pushMatrix();

  // transaladar
  translate(600 + desplazamientoX, 200);

 
 dibujarPatron(-200, -200, tamCelda);

//rota el cuadrado chico

pushMatrix();
translate(-12, -9);
rotate(radians(anguloChico));
dibujarPatronChico(-108, -108, 8);
popMatrix();

dibujarLineasGrilla(-200, -200, tamCelda);
  popMatrix();

}

void dibujarPatron(int inicioX, int inicioY, int tam) {

  //for
 for (int fila = 0; fila < 70; fila++) {

   for (int col = 0; col < 70; col++) {

     if (esAmarillo(fila, col)) {
  fill(colorNegro);
}
else {
  fill(colorAmarillo);
}
      noStroke();

      rect(
        inicioX + col * tam,
        inicioY + fila * tam,
        tam,
        tam
      );
    }
  }

  stroke(255, 0, 0);

 for (int col = 1; col <= 70; col += 2) {
    line(
      inicioX + col * tam,
      inicioY,
      inicioX + col * tam,
      inicioY + 70 * tam
    );
  }
stroke(150);

for (int fila = 1; fila <= 70; fila += 2) {
  line(
    inicioX,
    inicioY + fila * tam,
    inicioX + 70 * tam,
    inicioY + fila * tam
  );
}
}
void dibujarLineasGrilla(int inicioX, int inicioY, int tam) {

  stroke(255, 0, 0);

  for (int col = 1; col <= 70; col += 2) {
    line(
      inicioX + col * tam,
      inicioY,
      inicioX + col * tam,
      inicioY + 70 * tam
    );
  }

  stroke(150);

  for (int fila = 1; fila <= 70; fila += 2) {
    line(
      inicioX,
      inicioY + fila * tam,
      inicioX + 70 * tam,
      inicioY + fila * tam
    );
  }
}
//boolean
boolean esAmarillo(int fila, int col) {

  if ((col-fila+70) % 6 >= 3) {
    return true;
  }
  else {
    return false;
  }
}
boolean esAmarilloContrario(int fila, int col) {

  if ((col + fila) % 6 >= 3) {
    return true;
  }
  else {
    return false;
  }
}

//cuadro chico

void dibujarPatronChico(float inicioX, float inicioY, int tam) {

  for (int fila = 0; fila < 27; fila++) {
    for (int col = 0; col < 27; col++) {

      if (esAmarilloContrario(fila, col)) {
 fill(colorAmarilloChico);
}
else {
  fill(colorNegroChico);
}
      noStroke();

      float x = inicioX + col * tam;
      float y = inicioY + fila * tam;

      rect(x, y, tam, tam);
    }
  }
}

void mouseClicked() {

  float xChico = 480 + desplazamientoX;
  float yChico = 83;
  float tamChico = 216;

  float xGrande = 600 + desplazamientoX - 200;
  float yGrande = 200 - 200;
  float tamGrande = 70 * tamCelda;

  boolean tocaChico =
    mouseX >= xChico &&
    mouseX <= xChico + tamChico &&
    mouseY >= yChico &&
    mouseY <= yChico + tamChico;

  boolean tocaGrande =
    mouseX >= xGrande &&
    mouseX <= xGrande + tamGrande &&
    mouseY >= yGrande &&
    mouseY <= yGrande + tamGrande;

 if (tocaChico) {
  colorAmarilloChico = color(random(180, 255), random(180, 255), 0);
  colorNegroChico = color(random(0, 80), random(0, 80), random(0, 80));
  anguloChico += 45;
}

  else if (tocaGrande) {
    colorAmarillo = color(random(180, 255), random(180, 255), 0);
    colorNegro = color(random(0, 80), random(0, 80), random(0, 80));
  }
}
void mouseDragged() {
  reiniciar();
}

void reiniciar() {
  tamCelda = 8;
  desplazamientoX = 0;
  anguloChico = 0;
  colorAmarillo = color(250, 254, 7);
  colorNegro = color(0);
  colorAmarilloChico = color(250, 254, 7);
  colorNegroChico = color(0);
}
