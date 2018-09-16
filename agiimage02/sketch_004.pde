float x[]=new float[50],y[]=new float[50];
float theta[]=new float[50];
void setup(){
  size(500,500);
  
}

void draw(){
  PImage agi = loadImage("knowledge01.png");
  background(0,0,0,0.5);
  translate(width/2,height/2);
  for(int i=0;i<50;i++){
   x[i]=200*cos(theta[i])*cos(theta[i])*cos(theta[i]);
   y[i]=200*sin(theta[i])*sin(theta[i])*sin(theta[i]);
   image(agi,x[i],y[i],120,80);
   theta[i]+=(i+30)*PI/128/100;
  }
}
