void colorsq(){
for(int x=0;x<4;x++){
  for(int y=0;y<4;y++){
    fill(-0.1245*grid[x][y]+255);
    rect(x*100,y*100,100,100);
  }
}
  
}