Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1000,800);
  background(#43AF76);
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  
  myFlower1 = new Flower(_r1,_petals,_x,_y,_pc);
  myFlower2 = new Flower(_r1,_petals,_x-200,_y-200,_pc);
  myFlower3 = new Flower(_r1,_petals,_x+150,_y+150,_pc);

//  myFlower2 = new Flower();
//   myFlower3 = new Flower();
}

void draw(){
  background(#43AF76);
  myFlower1.display();
  myFlower1.move();
  myFlower1.bounce();
  myFlower2.display();
  myFlower2.move();
  myFlower2.bounce();
  myFlower3.display();
  myFlower3.move();
  myFlower3.bounce();
}
