void setup() {
  size(500, 500);
}
void draw()
{
  background(#FFFFF2);
  fill(#F5FFFA);
  rect(100, 100, 100, 150);  //長方形（X起始位置, Y起始位置, 長, 寬）
  rect(mouseX, mouseY, 100, 150);
}
