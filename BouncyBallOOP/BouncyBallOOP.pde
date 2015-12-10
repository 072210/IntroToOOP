int quantity = 1000;
Ball[] b = new Ball[quantity];

void setup() {
  size(1400, 800);
  for (int i = 0; i < quantity; i++) {
    b[i] = new Ball();      //initialize b as a new object of the Ball class
  }
}

void draw() {
  background(0, 0, 40);
  for (int i = 0; i < quantity; i++) {
    b[i].display();         //call b's display() method
    b[i].move();
    b[i].bounce();
  }
}