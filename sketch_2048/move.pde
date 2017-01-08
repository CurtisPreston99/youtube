void up(){
for(int x=0;x<4;x++){
  for(int y=0;y<4;y++){
    if(y-1>=0){
    if(grid[x][y]>0){//if moving to free space
    if(grid[x][y-1]==0){
      grid[x][y-1]=grid[x][y];
      grid[x][y]=0;
    }
    }
    //same
    if(grid[x][y-1]==grid[x][y]){
    grid[x][y-1]=grid[x][y]*2;
    grid[x][y]=0;
    }
    }
  }}
  random2();
}

void down(){
for(int x=0;x<4;x++){
  for(int y=3;y>=0;y--){
  if(y+1<4){
  if(grid[x][y]>0){//moving to free space
  if(grid[x][y+1]==0){
    grid[x][y+1]=grid[x][y];
    grid[x][y]=0;
  }
  }
  //same
  if(grid[x][y+1]==grid[x][y]){
  grid[x][y+1]=grid[x][y]*2;
  grid[x][y]=0;
  }
  }
  }
}
random2();
}


void left(){
for(int x=0;x<4;x++){
  for(int y=0;y<4;y++){
    if(grid[x][y]>0){
    if(x-1>=0){
    
    if(grid[x-1][y]==0){
     grid[x-1][y]=grid[x][y];
     grid[x][y]=0;
    }
    
    //same
    if(grid[x][y]==grid[x-1][y]){
    grid[x-1][y]=grid[x][y]*2;
    grid[x][y]=0;
    }
    }
    }
  }
}
random2();
}


void right(){
for(int x=3;x>=0;x--){
  for(int y=0;y<4;y++){
  if(x+1<4){
  if(grid[x][y]>0){
    if(grid[x+1][y]==0){
      grid[x+1][y]=grid[x][y];
      grid[x][y]=0;
   }
   
   if(grid[x][y]==grid[x+1][y]){
   grid[x+1][y]=grid[x][y]*2;
   grid[x][y]=0;
   }
  }
  }
  }
}
random2();
}



void random2(){
int x = round(random(3));
int y = round(random(3));


while(grid[x][y]>0){
x = round(random(3));
y = round(random(3));
}
grid[x][y]=2;
}