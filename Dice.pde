class Die {
  int myX, myY; // and size?
  Die(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
  }
  void show(){
    fill(255);
    rect(myX,myY,50,50,12);
    fill(0);
    ellipse(myX+25,myY+25,10,10);
  }
  
}

Die test;

void setup(){
  size(400,400);
  noLoop();
  noStroke();
}

void draw(){
  test = new Die(100,100);
  test.show();
}

void mousePressed(){
}
