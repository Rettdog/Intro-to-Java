  import ddf.minim.*;     //at the very top of your sketch
AudioSample sound1;     //at the top of your sketch
  PImage Donkey;
  PImage tail;     //at the top of the sketch
void setup(){
  Minim minim = new Minim(this);     //in the setup method  
sound1 = minim.loadSample("heehaw.wav");     //in setup
size(1355,907);
Donkey = loadImage("Donkey.jpg"); 
Donkey.resize(1355,907);
background(Donkey); 
tail = loadImage("tail.png");     //in setup method
sound1.trigger();

}
void draw(){

  background(Donkey); 
    textSize(24);
  fill(255);
text("How to PLay: Click where you think the tail should go.",100,50);
  image(tail, mouseX-350, mouseY-350);
  if(mousePressed){
    if(mouseX<380){
      if(mouseX>350){
       if(mouseY<355){
        if(mouseY>340){
     println("You win");
          sound1.trigger();
        }
       }
      }
    }
  }
  println("X "+mouseX);
  println("Y" +mouseY);
}