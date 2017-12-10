int speed = 1;
int speed2 = -5;
  float x1 = 250;
  int x2 = 250;
void setup(){
  size(500,500);
 sound = minim.loadSample("ding.wav");
}
void draw(){
  fill(255);
   rect(0,0,500,500);
  if(x1>=500){
   speed = speed * -1; 
  }
  if(x1<=0){
   speed = speed * -1; 
  }
    x1 = x1 + speed;
  for(int i = 0;i <250;i+=10){
    noFill();
    stroke(0,0,0);

  ellipse(x1,250,i,i);
  }
    if(x2>=500){
   speed2 = speed2 * -1; 
  }
  if(x2<=0){
   speed2 = speed2 * -1; 
  }
    x2 = x2 + speed2;
  for(int i = 0;i <250;i+=10){
    noFill();
    stroke(0,0,0);

  ellipse(x2,250,i,i);
  }
  if(x1 == x2){
    playSound();
  }
}
import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    
        
        sound.trigger();
        
}
Minim minim = new Minim(this);
        AudioSample sound;