class Ball{
  
  color c;
  float rad;
  float x;
  float y;
  float dx;
  float dy;
  
  Ball(){
    c = random(255);
    rad = 10;
    x = random(width - rad);
    y = random(height - rad);
    dx = random(20);
    dy = random(20);
  }
  
  boolean boundsH(){
    return ( (x - rad) > 0 && (x + rad) < width );
  }
  boolean boundsV(){
    return ( (y - rad) > 0 && (y + rad) < height );
  }
  
  void move(){
    if( boundsH() && boundsV() ){
      x += dx;
      y += dy;
    }
    else{
      bounce();
    }
  }
  
  void bounce(){
    if( !boundsH ){
      dx = -dx;
    }
    else{
      dy = -dy;
    }
  }
  
}