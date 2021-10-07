class Die {
  int myX, myY, number; // and size?
  Die(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
    number = (int)(Math.random()*6)+1; 
    total = total + number;
  }
  void show(){
    fill(0);
    rect(myX-25,myY-25,50,50,12); //base
    
    fill((int)(Math.random()*225)+31,(int)(Math.random()*225)+31,(int)(Math.random()*225)+31);
    
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
  }//end of show()
}

void setup(){
  size(500,500);
  background(100,100,100);
  noLoop();
  noStroke();
}

int total = 0;
int ones = 0;
int twos = 0;
int threes = 0;
int fours = 0;
int fives = 0;
int sixes = 0;

void draw(){
  background(100,100,100);
  for(int y = 40; y < 450; y = y + 60){
    for(int x = 50; x < 475; x = x + 60){
      if((y-40)%120 == 0){
        Die test = new Die(x-25,y);
        test.roll();
        test.show();
      } else {
        Die test = new Die(x,y);
        test.roll();
        test.show();
      }
    }
  }
  fill(0);
  text("Total: "+total, 20, 480);
}

void mousePressed(){
  total = 0;
  ones = 0;
  twos = 0;
  threes = 0;
  fours = 0;
  fives = 0;
  sixes = 0;
  redraw();
}
