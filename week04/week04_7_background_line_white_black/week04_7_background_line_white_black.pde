void setup(){
  size(500,500);
}
int [][] go ={ 
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,2,0,0,0},
  {0,0,1,0,0,0,0,0,0},  
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
};
void draw(){
  background(246, 194, 108);
  for(int i=1; i<=9; i++){
    line(50, i*50, 450, i*50);
    line(i*50, 50, i*50, 450);
  }
  for(int i=0; i<9; i++){    //對應y座標
    for(int j=0; j<9; j++){  //對應x座標
      if(go[i][j]==1){
        fill(0);
        ellipse(50+j*50, 50+i*50, 40, 40);
      }
      else if(go[i][j]==2){
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
      }
    }
  }
}
