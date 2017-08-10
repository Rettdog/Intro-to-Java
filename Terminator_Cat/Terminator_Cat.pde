int eyeX = 170;
int eyeY = 137;


PImage catPic;
void setup(){
  size(500,400);
  catPic = loadImage("catPic.jpg");
  catPic.resize(500,400);
  background(catPic);
}
void draw(){
  if(mousePressed){
    println("Mouse's x position: "+mouseX+ "\n"+"Mouse's y position: " + mouseY+ "\n");
    
keyPressed((mouseX-250)/200);
}
fill(256,0,0);
noStroke();
ellipse(eyeX,eyeY,20,20);
ellipse(eyeX+47,eyeY,20,20);
}
void keyPressed(float accel){
  println(accel);
  if(accel<0){
   background(catPic); 
   eyeX=170;
   eyeY=137;
  }
eyeY+=2*accel;
eyeX+=2*accel;

}
