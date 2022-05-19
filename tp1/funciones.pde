PFont fuente1, fuente2;
int posXring = 35;
int posYring = 453;
int colorboton = 255;
PImage  fondo0, fondo1, fondo2, fondo3, fondo4;
int posXtext = 300;
int posXtext2 = 300;
int posXtext1 = 500;
int posXtext3 = 500;
int colorboton1 = 0;
void boton() {



  rectMode(CENTER);
  rect(width/2, height/2+200, 400, 100);
  fuente1 = createFont("sonicfont.TTF", 32);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(colorboton);
  text("Iniciar creditos", width/2, height/2+190);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(colorboton1);
  textSize(14);
  text("CONTROLES: FLECHAS IZQ Y DER", width/2, height/2+230);
  fill(#49A9E8);
  circle(75, 489, 110);
  ring0.resize(80, 80);
  image(ring0, posXring, posYring);
}

void pantalla0() {

  image(fondo0, 0, 0);
  fill(#49A9E8);
  strokeWeight(8);
  stroke(0, 0, 255);
}

void pantalla1() {
  posXtext++;
  if (posXtext == 400) {
    posXtext--;
  }
  image(fondo1, 0, 0);
  fuente1 = createFont("mania.ttf", 32);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(round(random(25, 50)));
  text("PUBLISHER \nSEGA \n\n  DEVELOPERS \nChristian Whitehead \nHideo Kojima \nSuda51", posXtext, 275);
}

void pantalla2() {
  posXtext1--;
  if (posXtext1 < 400) {
    posXtext1++;
  }
  image(fondo2, 0, 0);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(round(random(25, 50)));
  text("DIRECTORS \nShunsui Takamura \nHirohiko Araki \n\n  MUSIC \nAkira Yamaoka \nJoseph Anderson \nTOOL", posXtext1, 275);
}

void pantalla3() {
  posXtext2++;
  if (posXtext2 == 400) {
    posXtext2--;
  }
  image(fondo3, 0, 0);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(round(random(25, 50)));
  text("PUBLISHER \nSEGA \n\n  DEVELOPERS \nChristian Whitehead \nHideo Kojima \nSuda51", posXtext2, 275);
}

void pantalla4() {
  posXtext3--;
  if (posXtext3 < 400) {
    posXtext3++;
  }
  image(fondo4, 0, 0);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  fill(round(random(25, 50)));
  text("PERSONAJES \nSonic \nShadow \nRobotnik \nTails \nKnuckles", posXtext3, 275);
}
