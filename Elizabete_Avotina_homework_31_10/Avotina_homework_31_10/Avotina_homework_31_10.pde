int rect1X=20, rect1Y=20, rect1H=560, rect1W=240;
int rect2X=20, rect2Y=240, rect2H=560, rect2W=240;

int ellipseEnd1=250, ellipseEnd=245;

int ellipseSpeed=1;
int ellipseStopY=40, ellipseStop2Y=459;

int score = 0;

float displayLW=50;

int textX=300, textY=50;

Ball b;

void setup() {
  
  size (600, 500);
  background (#FFFFFF);
   b = new Ball();
}

void draw () {
  background (#FFFFFF);
  
  
 if (b.y < ellipseEnd1 && b.y >= ellipseEnd && mousePressed == true) {
 score += 1;
}  
    
  fill(#B7F029);
  noStroke();
  rect (rect1X, rect1Y, rect1H, rect1W); // green rect
  
  fill(#D60209);
  noStroke();
  rect (rect2X, rect2Y, rect2H, rect2W); // red rect

  textSize(32);
  fill (#FFFFFF);
  text (score, displayLW, displayLW);
 
textSize(24);
  fill(#050505);
  text("-Click- on the screen", textX, textY);
  
   b.display();
   b.jump();
}
