void pantalla0() {
  image(autofondo, 0, 0);
  fill(150, 0, 0);
  textFont(titulo);
  text("Parking Car", 100, 55);
  fill(0, 0, 150);
  textFont(titulo);
  textSize(40);
  text("The Game", 155, 100);
}

void botoninicio() {

  rectMode(CENTER);
  fill(0, 125, 175);
  stroke(0, 65, 175);
  strokeWeight(5);
  rect(250, 420, 150, 50);
  noStroke();
  textSize(25);
  fill(colorboton);
  text("Iniciar", 210, 430);
}

void botoncreditos() {
  textSize(25);
  fill(colorboton);
  text("CREDITOS", 370, 485);
}

void pantallacreditos() {

  fill(0, 25, 150);  
  rect(0, 0, 500, 500);
  fill(255);  
  textAlign(CENTER);
  textFont(titulo);
  textSize(25);
  text("DESARROLLADO POR \nMartin Alegre\n\nIMAGENES\n Kevin McLeod\n\n  IDEA ORIGINAL\n Minijuegos.com  ", width/2, 150);
}

void pantallajuego() {
  background(150);
  autojugador.resize(100, 50);

  for (int i=0; i<width; i+=85) {
    noFill();
    stroke(255);
    strokeWeight(5);
    rect(25, 0, i, 125);
  }
  
  for (int i=0; i<width; i+=85) {
    noFill();
    stroke(255);
    strokeWeight(5);
    rect(25, 300, 125, i);
  }
  
  for (int i=0; i<15; i+=1) {

    noFill();
    stroke(255);
    strokeWeight(5);
    rect(25, 215, i*200, 10);
  }

  pushMatrix();
  translate(height/2, width/2);
  rotate(radians(giro));
  imageMode(CENTER);
  image(autojugador, adelante, 0);
  popMatrix();
}
