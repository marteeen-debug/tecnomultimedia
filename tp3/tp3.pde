PFont titulo;
PImage autofondo;
PImage autojugador;
int colorboton=255;
int pantalla0=1, pantalla1=0;
int giro;
int adelante;
int atras;


void setup() {
  autojugador = loadImage("carplayer.png");
  autofondo = loadImage("cartooncars.jpg");
  titulo = createFont("nextge.ttf", 55);
  size(500, 500);
}

void draw() {
  // pantallacreditos();
  pantalla0();
  botoninicio();
  botoncreditos();
  // pantallajuego();

  //pantallacreditos();

  if (pantalla1==1) {
    pantallacreditos();
  }
}
void mouseClicked() {
  if (mouseX > 300 && mouseY > 400 && mouseX<500 && mouseY<500) {
    pantalla1 = 1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      giro--;
    } else if (keyCode== RIGHT) {
      giro++;
    } else if (keyCode== UP) {
      adelante--;
    } else if (keyCode== DOWN) {
      adelante++;
    }
  }
}
