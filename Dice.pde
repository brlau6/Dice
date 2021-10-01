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
    rect(myX-25,myY-25,50,50,12);
    fill(0);
    
    //all dots
    /*
    ellipse(myX,myY,10,10);//center
    ellipse(myX-11,myY-11,10,10);//upper left
    ellipse(myX+11,myY-11,10,10);//upper right
    ellipse(myX+11,myY+11,10,10);//bottom right
    ellipse(myX-11,myY+11,10,10);//bottom left
    ellipse(myX-11,myY,10,10);//mid left
    ellipse(myX+11,myY,10,10);//mid right
    */
    
    int number = 3;//(int)(Math.random()*6)+1; 
    
    if(number == 1){
      ellipse(myX,myY,10,10);//center
    } else if (number == 2){
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX+11,myY+11,10,10);//bottom right
    } else if (number == 3){ // 1 AND 2
      ellipse(myX,myY,10,10);//center
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX+11,myY+11,10,10);//bottom right
    }
  }
  
}

Die test;

void setup(){
  size(400,400);
  background(100,100,100);
  noLoop();
  noStroke();
}

void draw(){
  test = new Die(100,100);
  test.show();
}

void mousePressed(){
}
