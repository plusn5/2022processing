Fruit [] fruit;
void setup(){
  size(400,300);
  fruit = new Fruit[3];
  for(int i=0; i<3; i++){
    fruit[i] = new Fruit(this); 
  }
} 
void draw(){
  background(255,255,0);
  for(int i=0; i<3;i++){
    fill(255); ellipse(fruit[i].x , fruit[i].y , 50, 50);
    textSize(30);
    textAlign(CENTER,CENTER);
    fill(0); text(fruit[i].c, fruit[i].x , fruit[i].y);
    fruit[i].update();
  }
}
void keyPressed(){
  for(int i=0;i<3;i++){
    if( keyCode == fruit[i].c){
    fruit[i].reset();
    }
  }
}
