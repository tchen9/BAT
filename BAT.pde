Ball[] a = new Ball[20];

void setup() {
  background(0);
  size(500, 500);
  for(int i = 0; i < a.length; i++){
    a[i] = new Ball(); 
  }
}

void draw() {
  background(0);
  for (Ball b : a) {
    b.move();
    //fill(b.getColor());
  }
}