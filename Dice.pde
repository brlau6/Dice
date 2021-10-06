class Die {
  int myX, myY; // and size?
  Die(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
  }
  void show(){
    fill(0);
    rect(myX-25,myY-25,50,50,12);
    
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    
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
    
    int number = (int)(Math.random()*6)+1; 
    
    if(number == 1){
      ellipse(myX,myY,10,10);//center
    } else if (number == 2){
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX+11,myY+11,10,10);//bottom right
    } else if (number == 3){ // 1 AND 2
      ellipse(myX,myY,10,10);//center
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX+11,myY+11,10,10);//bottom right
    } else if (number == 4){ // 2 AND 2 other dots
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX-11,myY+11,10,10);//bottom left
      ellipse(myX+11,myY-11,10,10);//upper right
      ellipse(myX+11,myY+11,10,10);//bottom right
    } else if (number == 5){ // 4 AND 1
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX-11,myY+11,10,10);//bottom left
      ellipse(myX+11,myY-11,10,10);//upper right
      ellipse(myX+11,myY+11,10,10);//bottom right
      ellipse(myX,myY,10,10);//center
    } else { // 4 AND 2 other dots
      ellipse(myX-11,myY-11,10,10);//upper left
      ellipse(myX-11,myY+11,10,10);//bottom left
      ellipse(myX+11,myY-11,10,10);//upper right
      ellipse(myX+11,myY+11,10,10);//bottom right
      ellipse(myX-11,myY,10,10);//mid left
      ellipse(myX+11,myY,10,10);//mid right
    }
  }
}

void setup(){
  size(500,500);
  background(100,100,100);
  noLoop();
  noStroke();
}

void draw(){
  for(int y = 40; y < 450; y = y + 60){
    for(int x = 50; x < 475; x = x + 60){
      if((y-40)%120 == 0){
        Die test = new Die(x-25,y);
        test.show();
      } else {
        Die test = new Die(x,y);
        test.show();
      }
    }
  }
}

void mousePressed(){
  redraw();
}
