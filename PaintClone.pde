//PaintCode
//karla medina

//variables used in the paint clone
color cursorcolor = 0;
int green = 0;
int step = 10;
int red = 0;
int blue = 0;

void setup() {
  size(600, 400);
  background(255);
}
void draw() {
  noStroke();
  //red gets brighter
  fill(red, 0, 0);
  rect(0, 0, 50, 50);
  //only have two lengths to block off
  if (mousePressed && mouseX<50 && mouseY<50) {
    red = red + step;
  } 
  //red turns to black
  fill(red, 0, 0);
  rect(50, 0, 50, 50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50) {
    red = red - step;
  }

  //more green button
  fill(0, green, 0);
  rect(0, 50, 50, 50);
  if (mousePressed && mouseX<50 && mouseY<100 && mouseY>50) {
    green = green + step;
  }
  //less green button
  fill(0, green, 0);
  rect(50, 50, 50, 50);
  //blocked off all side of the rect.
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<100 && mouseY>50) {
    green = green - step;
  }
 
  //blue turns brighter
  fill(0, 0, blue);
  rect(0, 100, 50, 50);
  if (mousePressed && mouseX<50 && mouseY>100 && mouseY<150) {
    blue = blue + step;
  }
  //blue turns black
  fill(0, 0, blue);
  rect(50, 100, 50, 50);
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY<150 && mouseY>100) {
    blue = blue - step;
  }
  
  //drawing part for all colors
  cursorcolor = color(red, green, blue);
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
  //reset button shape,color,text,& borders
  fill (250, 189, 189);
  ellipse(575, 375, 30, 30);
  fill(0);
  textSize(10);
  text("reset", 563, 380);

  if (mousePressed && mouseX<590 && mouseX>550 && mouseY<390 && mouseY>350) {
    reset();
  }
}
//method to reset the background when pressed
void reset() {
  background(255);
  fill (250, 189, 189);
  ellipse(575, 375, 30, 30);
  fill(0);
  textSize(10);
  text("reset", 563, 380);
  
}
