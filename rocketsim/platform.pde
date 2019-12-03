class Platform{
  PVector location;
  
  Platform(){
    this.location = new PVector(width / 2, height -40);
  }
  
  void show(){
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(this.location.x, this.location.y, width/4, 30);
  }
}
