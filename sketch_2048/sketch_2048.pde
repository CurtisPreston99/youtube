int grid[][] =new int [4][4];

void setup(){
size(400,400);
textAlign(CENTER,BOTTOM);


grid[round(random(3))][round(random(3))]=2;
grid[round(random(3))][round(random(3))]=2;
}

void draw(){
background(255);
grid();

}

void grid(){
for(int x=0; x<5;x++){
  line((width/4)*x,0,(width/4)*x,height);
}
for(int y=0; y<5;y++){
  line(0,(height/4)*y,width,(height/4)*y);
}
fill(0,0,0);

for(int x=0;x<4;x++){
  for(int y=0;y<4;y++){
    
    if(grid[x][y]>0){//numbers
    fill(0);
    text(grid[x][y],((x)*width/4)+50,(y*height/4)+50);
    
    }
}
}

}


void keyPressed(){
if(key=='w'||key=='W'){
  up();
}
if(key=='s'||key=='S'){
  down();
}
if(key=='a'||key=='A'){
left();
}
if(key=='d'||key=='D'){
right();
}
}