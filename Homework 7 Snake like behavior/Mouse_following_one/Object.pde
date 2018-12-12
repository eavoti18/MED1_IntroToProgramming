class Object {
  int num = 60;
  int[] x = new int[num];
  int[] y = new int[num];

  int indexPosition=0;
  
  void display () {

   x[indexPosition] = mouseX;
   y[indexPosition] = mouseY;
  
  indexPosition += 1;
  
  if (indexPosition == num){
    indexPosition = 0;
  }
    for (int i = 0; i < num; i++) {
    
    int pos = (indexPosition + i) % num;
    noStroke();
    fill(random(255),random(255),random(255) );
  rect(x[pos], y[pos],20, 20, 7);
    }
  }
}
