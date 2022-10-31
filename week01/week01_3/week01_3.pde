void setup() {
  size(500, 500);   ///畫面大小
  background(#FFFFF2);   ///背景顏色
  stroke(255, 0, 0);   ///畫筆顏色
}
void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY );   ///畫線
  }
}
void keyPressed() {
  if (key == '1' ) stroke(#4682B4);
  if (key == '2' ) stroke(#6A5ACD);
  if (key == '3' ) stroke(#E6005C);
}
