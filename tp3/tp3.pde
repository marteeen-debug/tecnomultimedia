PFont titulo;
PImage autofondo;
PImage autojugador;
int colorboton=255;
int pantalla0=0, pantalla1=0;
int reiniciopantalla = 0;
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


  // pantallajuego();

  //pantallacreditos();
  if (pantalla0==0 && pantalla1==1 ) {
    pantallacreditos();
  }
  if (pantalla0==0 && pantalla1==0) {

    pantalla0();
    botoninicio();
    botoncreditos();
  }
  if (reiniciopantalla == 1 ) {
    pantalla0();
    botoncreditos();
    botoninicio();
   
  }
}
void mouseClicked() {
  if (mouseX > 300 && mouseY > 400 && mouseX<500 && mouseY<500) {
    pantalla1 = 1;
    pantalla0 = 0;
  }
}

void keyPressed() {
  if (key== 'r') {
      reiniciopantalla = 1;
    }
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
