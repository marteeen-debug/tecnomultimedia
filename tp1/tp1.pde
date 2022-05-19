
boolean DentroDelCirculo;
boolean DentroDeRect;
int pantalla0, pantalla2, pantalla3, pantalla4;
int pantalla1 = 0;
PImage ring0;
int pantallanum =0;

void setup() {
  size(800, 560);
  fondo0 = loadImage("fondo0.jpg");
  ring0 = loadImage("ring0.png");
  fondo0 = loadImage("fondo0.jpg");
  fondo1 = loadImage("fondo1.jpg");
  fondo2 = loadImage("fondo2.png");
  fondo3 = loadImage("fondo3.png");
  fondo4 = loadImage("fondo4.jpg");
  fuente1 = createFont("mania.ttf", 32);
}

void draw() {
 
  pantalla0();
  boton();
  DentroDelCirculo = (mouseX >25 && mouseY >430 && mouseX < 138 && mouseY<550);
  DentroDeRect = (mouseX > 200 && mouseY > 430 && mouseX<600 && mouseY<530);
  //println(DentroDelCirculo);
  println(DentroDeRect);
  //text("mouseX ="+ mouseX + "mouseY=" + mouseY, 100, 100);

  if (pantallanum== 5) {
    pantalla0();
    boton();
  }
  if (pantalla1 == 1) {
    pantalla1();
  }
  if (pantallanum==2) {
    pantalla2();
  }

  if (pantallanum==3) {
    pantalla3();
  }

  if (pantallanum==4) {
    pantalla4();
  }
}
void mousePressed() {
  //clickear en el circulo para alterar posicion de anillo, cliquear fuera del circulo para reiniciar su estado
  if (DentroDelCirculo) {
    posXring = round(random(0, 600));
    posXring++;
    posYring = round(random(0, 600));
    posYring++;
  } else {
    posXring = 35;
    posYring = 453;
  }
}

void mouseClicked() {
  if (mouseX > 200 && mouseY > 430 && mouseX<600 && mouseY<530) {
    pantalla1 = 1;
  }
  if (pantalla1 == 1 && mouseX > 200 && mouseY > 430 && mouseX<600 && mouseY<530) {
    pantalla1();
  }
}

void mouseMoved() {
  if (DentroDeRect) {
    colorboton = 0;
  } else {
    colorboton = 255;
  }
}

void keyPressed() {

  if (key == CODED) {
    if (keyCode == RIGHT) {
      pantallanum++;
    }
    if (keyCode == LEFT) {
      pantallanum--;
    }
  }
}
