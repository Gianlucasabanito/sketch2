ArrayList<square> squares = new ArrayList<square>();

void setup(){
  size(900,900);
  for(int i = 0; i < 500; i++){
    squares.add(new square());
  }
}
void draw(){
  background(255);
  pushMatrix();  
  translate(width/2, height/2);
  for(square c: squares){
    c.move();
    c.display();
  }

  popMatrix();
}

class square{
  PVector s, a, d;
  square(){
    s = new PVector(random(-width/2, width/2), random(-height/2, height/2));
    d = new PVector(0,0);
    a = new PVector(0,0);
  }
 void display(){
    fill(255);
    square(s.x,s.y,20);
  }
 void move(){
    
    d = new PVector(-cos(s.y/10.0), -sin(s.x/10.0));
    d.setMag(1);
    d.limit(4);
    s.add(d);
    
    if(s.x < -width/2) s.x = width/2; if(s.x >width/2) s.x = width/2; if(s.y < -height/2) s.y = height/2; if(s.y > height/2) s.y = -height/2;
  
  }
}
