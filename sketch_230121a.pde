void setup(){
  size(600, 400);
}
void draw(){
  background(0);
  fill(255);
  Player();
  Enemy();
  
}
void Player(){
  rect(mouseX, mouseY, 30, 30);
}

float enemX;
float enemY;

void Enemy(){
  enemY += 5;
  if(enemY > 400){
    enemX = random(600);
    enemY = 0;
  }
  fill(255, 0, 0);
  rect(enemX, enemY, 30, 30);
}
