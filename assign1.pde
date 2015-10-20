PImage fighterImg;
PImage treasureImg;
PImage hpImg;
PImage bg1Img;
PImage enemyImg;
PImage bg2Img;

int x, y;//treature
int z, a;//hp
int b, c;//enemy
int d, e;//bg1 2

void setup(){
  size(640,480);
     
  
  
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  x=x-1;
  y=y-1;
  x=floor(random(600));
  y=floor(random(450));
  treasureImg=loadImage("img/treasure.png");
  fighterImg=loadImage("img/fighter.png");
  
  z=floor(random(195));
  hpImg=loadImage("img/hp.png");
 
  c=floor(random(400));
  enemyImg=loadImage("img/enemy.png");
  
  rect(20,5,z,30);
  d=640;
  e=0;
}
 


void draw(){
  background(0);
  
  image(bg1Img,e-640,0);
  image(bg2Img,d-640,0);
     e=e+1;
  e%=1280;
   d=d+1;
  d%=1280;
  
  b=b+3;
  b%=640;
  image(enemyImg,b,c);
  
  image(fighterImg,580,200);
 
  image(treasureImg,x,y);
  colorMode(RGB);
  fill(255,0,0);
  
  rect(20,5,z,30);
  image(hpImg,10,5);
  
  
}
