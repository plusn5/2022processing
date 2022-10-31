void setup() {
  size(500, 500);
  PFont font = createFont("標楷體", 30);
  textFont(font);
  
  String []flower = {"黑桃","紅心","方塊","梅花"};
  face1 = flower[int(random(4))]+int(random(13)+1);
  face2 = flower[int(random(4))]+int(random(13)+1);
  face3 = flower[int(random(4))]+int(random(13)+1);
  face4 = flower[int(random(4))]+int(random(13)+1);
}
String face1,face2,face3,face4;
int w=20;
void draw()
{
  drawCard(100, 100, face1);
  drawCard(150, 150, face2);
  drawCard(200, 200, face3);
  drawCard(250, 250, face4);
}
void drawCard(int x, int y, String face)
{
  fill(255);
  rect(x-w/2, y-w/2, 150+w, 250+w, 20);
  fill(#FFFFF2);
  rect(x, y, 150, 250, 20);
  if (face.indexOf("黑桃")==-1 && face.indexOf("梅花")== -1)fill(#FF0000);
  else fill(0);
  textSize(40);
  text(face, x, y+30);
}
