void setup(){
  size(500,500);
}
float x=250, y=250; ///位置
float vx=2.0, vy= -1.5;
float boardX, boardY=470, boardW=100, boardH=20;
void draw(){
  background(#FFFFF2); //背景，可以去除殘影
  boardX = mouseX;
  rect(boardX, boardY, boardW, boardH);
  ellipse( x, y, 10, 10); //橢圓
  x= x + vx;
  y= y + vy;
  if( x>500 ) vx=-vx;
  if( y<0 ) vy = -vy;
  if( x<0 ) vx = -vx;
  if(( y>boardY && y<boardY+boardH) &&
    ( x>boardX && x<boardX+boardW)){
     vy=-vy; //碰到板子反彈
     vx += (mouseX-pmouseX)/2; //mouse的移動速度
  }
  if(mousePressed && mouseButton==LEFT) boardW *= 1.01; //按左鍵板子變大
  if(mousePressed && mouseButton==RIGHT) boardW *= 0.99;//按右鍵板子變小
}
