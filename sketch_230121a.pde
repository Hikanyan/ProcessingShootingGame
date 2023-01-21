void setup(){
  size(600, 400);
}
void draw(){
  GameManager();
  Player();
  Enemy();
  
}
PVector playerPos;
void Player(){
  rect(mouseX, 350, 30, 30);
  playerPos = new PVector(mouseX,350);
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

float bulletX;
float bulletY;

void Shooting(){
  if(bulletY < 0){
    bulletX = playerPos.x;
    bulletY = playerPos.y;
  }
  fill(0, 0, 255);
  rect(bulletX,bulletY,15,15);
}

boolean isGamePlay;
boolean isGameClear;
boolean isGameOver;

void GameManager(){
  bulletY -= 10;
  background(0);
  fill(255);
  
  if (mousePressed && (mouseButton == LEFT)){
    Shooting();
  }
}
