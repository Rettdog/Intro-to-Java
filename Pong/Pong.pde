float x = random(256);
int y = 100;
float xSpeed = 2;
float ySpeed = 2;
int paddleX = 250;
int points = 0;
int tries = 0;
int totalPoints = 0;
void setup(){
size(500,500);
 x = random(256);
y = 100;
 xSpeed = 5;
 ySpeed = 5;
 paddleX = 250;
 points = 0;
 tries++;
 

}
void draw(){
  background(100,100,100);
  println(points);
  fill(255,255,255);
    text("Points: "+points+"\n"+"Tries: "+tries+"\nTotal Points: " +totalPoints+"\n",0,10);
  fill(200,100,30);
  noStroke();
  ellipse(x,y,15,15);
  paddleX = mouseX-40;
  rect(paddleX, 450, 80, 20);
  x+=xSpeed;
  y+=ySpeed;
  if(x<0){
    xSpeed = -1*xSpeed;
  }
  if(x>500){
    xSpeed = -1*xSpeed;
  }
  if(y<0){
    ySpeed = -1.*ySpeed;
  }
  if(y>500){
    setup();
  }
  if(intersects(x,y,paddleX, 450,80)){
    ySpeed = -1.2*ySpeed;
    xSpeed = 1.2*xSpeed;
    points++;
    totalPoints++;
    
  }
}
boolean intersects(float ballX, float ballY, float paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

