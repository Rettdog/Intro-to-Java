void setup(){
 size(500,500);
background(256,256,256); 
}
void draw(){
  fill(100,200,100,80);
 ellipse(250,200,200,200);
fill(200,200,100,80); 
  ellipse(300,300,200,200); 
  fill(100,200,200,80);
  ellipse(200,300,200,200); 
  fill(0,0,0);
  text("fun", 325,325);
   text("inviting", 150,325);
    text("focused", 240,180);
    if(mouseX>480&&mouseY>480){
      fill(0,0,0);
      text("secretive", 220, 260);
    }
  
}
