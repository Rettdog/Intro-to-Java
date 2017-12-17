PImage creeper;
 PImage minecraft;
 int x = 100;
 int y = 50;
void setup(){
  size(900,500);
  PImage minecraft = loadImage("minecraft.jpg");     //in setup method
minecraft.resize(900, 500);     //in setup method
background(minecraft);     //in setup method
creeper=loadImage("creeper.png");
creeper.resize(300,150);
}
void draw(){

  image(creeper, x-152, y-50); 
  
  fill(255,0,0);
  if(isNear(mouseX,100)&&isNear(mouseY,75)){
    fill(0,255,0);
    println("you have found the creeper!");
  }
 if(mousePressed){
  ellipse(mouseX,mouseY,10,10);
 }
  println("X"+mouseX);
}
boolean isNear(int a, int b) {
if (abs(a - b) < 50)
     return true;
else
     return false;
}