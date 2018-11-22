float r = 0; 
float angle = 0;

float elSi = 10; // defining noise for size
float elCol = 0; // defining noise for color

void setup () {
  size(650, 650);
  background(255,255,255);
}

void draw () {
  frameRate (250);
  
  float x = r * cos(angle); //rotating
  float y = r * sin(angle);
  
  elSi = elSi + 0.02; // size
  float n = noise(elSi) * 35; 
 
  elCol = elCol + 0.02 ; // colour
  float m = noise(elCol) *255;
  fill (m/255, m, m*255);
  
noStroke();
ellipse(x+width/2, y+height/2, n+10, n+10);

  angle -= 0.01;
  r -= 0.1;
}
