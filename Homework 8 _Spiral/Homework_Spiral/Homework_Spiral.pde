float r = 0; 
float angle = 0;

float elSi = 10; // defining noise for size
float elCol = 0; // defining noise for color

float sizeDif = 0.02;
float colourDif = 0.02;

int fullClr = 255;

void setup () {
  size(650, 650);
  background(255,255,255);
}

void draw () {
  frameRate (250);
  
  float x = r * cos(angle); //rotating
  float y = r * sin(angle);
  
  elSi = elSi + sizeDif; // size
  float n = noise(elSi) * 35; 
 
  elCol = elCol + colourDif ; // colour
  float m = noise(elCol) * fullClr;
  fill (m/fullClr, m, m*fullClr);
  
noStroke();
ellipse(x+width/2, y+height/2, n+10, n+10);

  angle -= 0.01;
  r -= 0.1;
}
