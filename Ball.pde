class Ball{
  
  float r = random(250);
  float g = random(250);
  float b = random(250);
  color c;
  float rad;
  float x;
  float y;
  float dx;
  float dy;
  
  Ball(){
    c = color(r , g , b);
    fill(c);
    rad = 10;
    x = random(width - rad);
    y = random(height - rad);
    dx = random(20);
    dy = random(20);
    ellipse( x , y , rad , rad );
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
    if( !boundsH() ){
      dx = -dx;
    }
    else{
      dy = -dy;
    }
  }
  
}