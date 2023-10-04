int total = 0; 
int numOne = 0;
int numTwo = 0;
int numThree = 0;
int numFour = 0;
int numFive = 0;
int numSix = 0;
void setup() {
  size(400,400);
  noLoop();
  frameRate(18);
  textAlign(CENTER);
}

void draw(){ 
  background(255);
  for (int j = 0; j<320; j+=40) {
    for (int i = 0; i<=360; i+=40) {
      Die one = new Die(i,j);
      one.roll();
      one.show();
      total = total + one.rollNum;
    }
  }
  text("Total: "+total, 200,340);
  text("Total 1's: "+numOne, 50,340);
  text("Total 2's: "+numTwo, 50,360);
  text("Total 3's: "+numThree, 50,380);
  text("Total 4's: "+numFour, 350,340);
  text("Total 5's: "+numFive, 350,360);
  text("Total 6's: "+numSix, 350,380);
}

void mousePressed() {
  redraw();
  total = 0;
  numOne = 0;
  numTwo = 0;
  numThree = 0;
  numFour = 0;
  numFive = 0;
  numSix = 0;
}

class Die {
  int oneX,oneY,rollNum,rectSize; 
  
  Die(int x, int y) {
    oneX = x;
    oneY = y;
    rectSize = 40;
  }
  
  void roll() {
    rollNum = (int)(Math.random()*6)+1;
    //System.out.println(rollNum);
  }
  
  void show() {
    fill((int)(Math.random()*256),(int)(Math.random()*256),256);
    rect(oneX,oneY,rectSize,rectSize);
    fill(0,0,0);
    if (rollNum == 1) {
      ellipse(oneX+20,oneY+20,7,7);
      numOne = numOne + 1;
    } else if (rollNum == 2) {
      ellipse(oneX+10,oneY+10,7,7);
      ellipse(oneX+30,oneY+30,7,7);
      numTwo = numTwo + 1;
    } else if (rollNum == 3) {
      ellipse(oneX+10,oneY+10,7,7);
      ellipse(oneX+30,oneY+30,7,7);
      ellipse(oneX+20,oneY+20,7,7);
      numThree = numThree + 1;
    } else if (rollNum == 4) {
      ellipse(oneX+10,oneY+10,7,7);
      ellipse(oneX+30,oneY+30,7,7);
      ellipse(oneX+10,oneY+30,7,7);
      ellipse(oneX+30,oneY+10,7,7);
      numFour = numFour + 1;
    } else if (rollNum == 5) {
      ellipse(oneX+10,oneY+10,7,7);
      ellipse(oneX+30,oneY+30,7,7);
      ellipse(oneX+10,oneY+30,7,7);
      ellipse(oneX+30,oneY+10,7,7);
      ellipse(oneX+20,oneY+20,7,7);
      numFive = numFive + 1;
    } else {
      ellipse(oneX+10,oneY+10,7,7);
      ellipse(oneX+30,oneY+30,7,7);
      ellipse(oneX+10,oneY+30,7,7);
      ellipse(oneX+30,oneY+10,7,7);
      ellipse(oneX+10,oneY+20,7,7);
      ellipse(oneX+30,oneY+20,7,7);
      numSix = numSix + 1;
    }
  }
}

