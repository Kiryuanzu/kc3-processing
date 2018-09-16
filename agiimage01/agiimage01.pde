int x[]=new int[15],y[]=new int[15];
int AgisizeX = 120;
int AgisizeY = 80;
int Aginum = 15;
void setup(){
  size(500, 500);
  for(int i = 0; i < Aginum;  i++  ) {
     y[i] = (int)random(-250);
     x[i] = (int)random(0, 600); 
  }
}

void draw(){
  PImage Agi = loadImage("knowledge01.png");
  for (int i = 0; i < Aginum;  i++) {
    x[i] -= 10;
    if(x[i] < -300) { 
      x[i] = 600;
    }
    image(Agi, x[i], y[i]);
  }
  background(0);
  translate(width/2, height/2);
  for(int i = 0; i < Aginum; i++){
  image(Agi, x[i], y[i], AgisizeX,AgisizeY);
  }
}

void mousePressed() {
  AgisizeX = AgisizeX + 10;
  AgisizeY = AgisizeY + 10; 
}
