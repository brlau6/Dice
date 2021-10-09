class Die {
  int myX, myY, number, mySize;
  Die(int x, int y) {
    myX = x;
    myY = y;
    mySize = 7;
  }
  void roll() {
    number = (int)(Math.random()*6)+1;
    if (number == 1) {
      ones++;
    } else if (number == 2) {
      twos++;
    } else if (number == 3) {
      threes++;
    } else if (number == 4) {
      fours++;
    } else if (number ==5) {
      fives++;
    } else {
      sixes++;
    }
    total = total + number;
    average = total/11;
  }//end  of roll()
  void show() {
    fill(0);
    noStroke();
    rect(myX-25, myY-25, 50, 50, 12); //base

    noFill();
    strokeWeight(4);
    stroke((int)(Math.random()*225)+31, (int)(Math.random()*225)+31, (int)(Math.random()*225)+31);

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

    if (number == 1) {
      ellipse(myX, myY, mySize, mySize);//center
    } else if (number == 2) {
      ellipse(myX-11, myY-11, mySize, mySize);//upper left
      ellipse(myX+11, myY+11, mySize, mySize);//bottom right
    } else if (number == 3) { // 1 AND 2
      ellipse(myX, myY, mySize, mySize);//center
      ellipse(myX-11, myY-11, mySize, mySize);//upper left
      ellipse(myX+11, myY+11, mySize, mySize);//bottom right
    } else if (number == 4) { // 2 AND 2 other dots
      ellipse(myX-11, myY-11, mySize, mySize);//upper left
      ellipse(myX-11, myY+11, mySize, mySize);//bottom left
      ellipse(myX+11, myY-11, mySize, mySize);//upper right
      ellipse(myX+11, myY+11, mySize, mySize);//bottom right
    } else if (number == 5) { // 4 AND 1
      ellipse(myX-11, myY-11, mySize, mySize);//upper left
      ellipse(myX-11, myY+11, mySize, mySize);//bottom left
      ellipse(myX+11, myY-11, mySize, mySize);//upper right
      ellipse(myX+11, myY+11, mySize, mySize);//bottom right
      ellipse(myX, myY, mySize, mySize);//center
    } else { // 4 AND 2 other dots
      ellipse(myX-11, myY-11, mySize, mySize);//upper left
      ellipse(myX-11, myY+11, mySize, mySize);//bottom left
      ellipse(myX+11, myY-11, mySize, mySize);//upper right
      ellipse(myX+11, myY+11, mySize, mySize);//bottom right
      ellipse(myX-11, myY, mySize, mySize);//mid left
      ellipse(myX+11, myY, mySize, mySize);//mid right
    }
  }//end of show()
}

void setup() {
  size(500, 500);
  background(100, 100, 100);
  noLoop();
  noStroke();
  rolls = 0;
}

int total = 0;
int average = total/11;
int rolls = 0;
int ones = 0;
int twos = 0;
int threes = 0;
int fours = 0;
int fives = 0;
int sixes = 0;
double feeling = Math.random();

void draw() {
  average = total/11;
  rolls++; //adds to total rolls from when program started
  background(200);

  feeling = Math.random(); // randomize face
  if (feeling < 0.5) { //smile
    for (int y = 100; y < 250; y = y + 60) { //eyes
      for (int x = 170; x < 400; x = x + 150) {
        Die test = new Die(x, y);
        test.roll();
        test.show();
      }
    }
    for (int x = 130; x < 375; x = x + 230) { //lip corners
      Die test = new Die(x, 315);
      test.roll();
      test.show();
    }
    for (int x = 185; x < 325; x = x + 60) { //bottom
      Die test = new Die(x, 375);
      test.roll();
      test.show();
    }
    text("Dice Roller is feeling happy!", 30, 30);
  } else if (feeling >= 0.5 && feeling < 0.8) { //straight face
    for (int y = 100; y < 250; y = y + 60) { //eyes
      for (int x = 170; x < 400; x = x + 150) {
        Die test = new Die(x, y);
        test.roll();
        test.show();
      }
    }
    for (int x = 130; x < 375; x = x + 60) { //straight mouth
      Die test = new Die(x, 340);
      test.roll();
      test.show();
    }
    text("Dice Roller is feeling meh.", 30, 30);
  } else if (feeling >= 0.8 && feeling < 0.95) { //frown
    for (int y = 100; y < 250; y = y + 60) { //eyes
      for (int x = 170; x < 400; x = x + 150) {
        Die test = new Die(x, y);
        test.roll();
        test.show();
      }
    }
    for (int x = 185; x < 325; x = x + 60) { //top
      Die test = new Die(x, 315);
      test.roll();
      test.show();
    }
    for (int x = 130; x < 375; x = x + 230) {//lip corners
      Die test = new Die(x, 375);
      test.roll();
      test.show();
    }
    text("Dice Roller is feeling sad...", 30, 30);
  } else {
    for (int x = 75; x < 250; x = x + 60) { //left eye
      Die test = new Die(x, 175);
      test.roll();
      test.show();
    }
    for (int x = 300; x < 450; x = x + 60) { //right eye
      Die test = new Die(x, 175);
      test.roll();
      test.show();
    }
    for (int x = 130; x < 375; x = x + 60) {//straight mouth
      Die test = new Die(x, 340);
      test.roll();
      test.show();
    }
    text("Dice Roller is sleepy and thinks you need rest too.", 30, 30);
  }

  fill(0);
  text("Total: "+total, 125, 460);
  text("Rolls: "+rolls, 200, 460);
  text("Average Roll: "+average, 270, 460);

  text("Ones: "+ones, 80, 480);
  text("Twos: "+twos, 135, 480);
  text("Threes: "+threes, 190, 480);
  text("Fours: "+fours, 260, 480);
  text("Fives: "+fives, 325, 480);
  text("Sixes: "+sixes, 380, 480);
}

void mousePressed() {
  total = 0;
  ones = 0;
  twos = 0;
  threes = 0;
  fours = 0;
  fives = 0;
  sixes = 0;
  redraw();
}
