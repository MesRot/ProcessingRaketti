class Rocket{
  PVector location;
  PVector velocity;
  
  Rocket(){
    this.location = new PVector(height / 2, width /2);
    this.velocity = new PVector(0, 0);
  }
  
  void update(){
    this.velocity.x += gravity;
    this.velocity.y *= airResist;
    println(this.velocity);
    this.location.add(this.velocity);
  }
  
  void show(){
    fill(255);
    rect(this.location.y, this.location.x, 40, 50);
  }
  
  void thrust(){
    this.velocity.x += -3;
    this.velocity.x = constrain(this.velocity.x, -9, 3);
  }
  
  void turn(Boolean way){
    if(way){
      println("oikea");
      this.velocity.y = 1;
      println(this.velocity.y);
    }
    else{
      this.velocity.y += -1;
      
    }
    thrust();
  }
  void collides
}
