Rocket raketti;
float gravity = 0.1;
float airResist = 0.99;
Platform alusta;
void setup(){
  size(600, 600);
  raketti = new Rocket();
  alusta = new Platform();
}


void draw(){
  background(255);
  raketti.update();
  raketti.show();
  alusta.show();
}

void keyPressed(){
  if(keyCode == UP){
    raketti.thrust();
  }
  if(keyCode == LEFT){
    raketti.turn(false);
  }
  if(keyCode == RIGHT){
    raketti.turn(true);
  }
}
