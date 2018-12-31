class Ball {
  int ellipseS;
  int ellipseSpeedPressed=5;

  float x;
  float y;
  
  Ball() {
    x = width/2;
    y = height/2;
    ellipseS=60;
}

void jump(){
    if (mousePressed == true) {
   y = y - ellipseSpeedPressed; // ellipse moves up
   
  } else if( y < height-40){
    y = y  + 1; // ellipse moves down
}
}

void display (){
  stroke(0);
  fill(#D3D3D3);
  ellipse (x,y, ellipseS, ellipseS);
  
}
}
