float x = random(500);
int y = 100;
float xSpeed = 2;
float ySpeed = 2;
int paddleX = 250;
int points = 0;
int tries = 0;
int totalPoints = 0;
int paddleWidth = 100;
int record = 0;
void setup(){
size(500,500);
 x = random(500);
y = 100;
 xSpeed = 5;
 ySpeed = 5;
 paddleX = 250;
 points = 0;
 tries++;
 paddleWidth = 100;
 

}
void draw(){
  background(0,0,0);
  println(points);
  fill(255,255,255);
    text("Points: "+points+"\n"+"Record: "+record+"\n"+"Tries: "+tries+"\nTotal Points: " +totalPoints+"\n",0,10);
  fill(0,255,0);
  noStroke();
  ellipse(x,y,15,15);
  paddleX = mouseX-(paddleWidth/2);
  rect(paddleX, 450, paddleWidth, 20);
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
  if(intersects(x,y,paddleX, 450,paddleWidth)){
    ySpeed = -1.05*ySpeed;
    xSpeed = 1.05*xSpeed;
    points++;
    totalPoints++;
    paddleWidth+=-2;
    if(record<points){
      record = points;
    }
  }
}
boolean intersects(float ballX, float ballY, float paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

