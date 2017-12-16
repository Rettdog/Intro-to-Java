int x1= 0;
int x2=0;
int y1=0;
int y2=0;
void setup(){
  size(500,500);

}
void draw(){
fill(255,255,255);
background(200);
ellipse(150,100, 150, 100);
ellipse(350,100, 150, 100);

fill(0,0,0);
x1 = mouseX;
x2 = mouseX;
if(mouseX<100){
  x1 = 100;
} if(mouseX>400){
  x2 = 400;
} if(mouseX<300){
  x2 = 300;
} if(mouseX>200){
  x1 = 200;
}
y1 = mouseY;
y2 = mouseY;
if (mouseY<75){
  y1 = 75;
  y2 = 75;
}else if (mouseY>125){
    y1 = 125;
  y2 = 125;
}
ellipse(x1,y1, 50, 50);
ellipse(x2,y2, 50, 50);

}