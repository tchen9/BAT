Ball[] a = new Ball[10];

void setup() {
  background(0);
  size(500, 500);
  for(int i = 0; i < a.length; i++){
    a[i] = new Ball(); 
  }
}

void draw() {
  for (Ball b : a) {
    b.move();
  }
}