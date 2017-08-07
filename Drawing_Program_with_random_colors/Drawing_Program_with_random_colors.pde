void setup(){
  size(700,700);
  background(#050403);
}
void draw(){
  ellipse(mouseX,mouseY,mouseX-350,mouseY-350);
  if(mousePressed){
  fill(mouseX,mouseY,random(256));
  println(mouseX);
  }
  else{
    fill(0,0,0);
  }
}
