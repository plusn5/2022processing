void setup(){
  size(500,500);
  PFont font = createFont("標楷體",30);
  textFont(font);
}
int w=20;
void draw()
{
  drawCard(100,100,"黑桃2");
  drawCard(150,150,"梅花2");
  drawCard(200,200,"紅心2");
}
void drawCard(int x,int y,String face)
{
  fill(255);
  rect(x-w/2,y-w/2,150+w,250+w,20);
  fill(#FFFFF2);
  rect(x,y,150,250,20);
  fill(0);
  textSize(40);
  text(face,x,y+30);
}
