class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 30;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = new PVector(random(-5, 5), random(-5, 5));
    c = color(random(255));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    stroke(255);
    strokeWeight(0.1);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {    //definitely not copied from something else
    if (loc.x + diam/2 >= width) {
      vel.x = -abs(vel.x);
      vel.x *= 0.85;//if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (loc.x - diam/2 <= 0) {
      vel.x = abs(vel.x);
      vel.x *= 0.85;//if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (loc.y + diam/2 >= height) {
      vel.y = -abs(vel.y);
      vel.y *= 0.85;
    } else if (loc.y - diam/2 <= 0) {
      vel.y = abs(vel.y);
      vel.y *= 0.85;
    }
  }
}