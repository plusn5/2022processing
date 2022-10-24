void setup(){
  size(400,300);
}
float fruitX=200, fruitY=300;//水果的位置，有小數點，精確
float fruitVX=2, fruitVY=-15; //水果的速度，正負號為方向
boolean flying = true;
void draw(){
  background(255,255,0);
  
  ellipse(fruitX, fruitY, 50, 50);
  if(flying){
    fruitX+=fruitVX;
    fruitY+=fruitVY;
    fruitVY+=0.98/3; //重力加速度
  }
}
void keyPressed(){
  flying = false;
  fruitReset();
}
void fruitReset(){
  fruitX=random(100,300);
  fruitY=300;
  fruitVX=random(-2,+2);
  fruitVY=-13;
  flying=true;
}
