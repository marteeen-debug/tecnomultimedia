void setup() {
  size(400, 400);
  background(#362CAD);
}

void draw() {
  strokeWeight(0);
  fill(#EAEAEA);
  ellipse(0, 0, 150, 150);
  fill(#367927);  
  rect(0, 300, 400, 400);
  fill(#909090);
  quad(120, 100, 150, 80, 150, 30, 120, 30);
  rect(100, 150, 200, 150); 
  fill(#B41E16);
  triangle(50, 150, 200, 50, 350, 150);
  fill(#71552F);
  rect(160, 230, 75, 70);
  fill(0);
  ellipse(220, 275, 15, 15);
  fill(#F7F24D);
  ellipse(250, 190, 40, 40);
}
