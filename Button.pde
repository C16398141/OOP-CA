class  Button {
  float x;
  float y;
  float len;
  int status;
  int target;
  int r;
  int g;
  int b;
  
  Button() {
   status = 0;
   target = 0;
   //start off displaying the buttons with these variables the following colour
   r = g = b = 255;
  }
  
  void display(float starX, float starY, float starD) {//x coord,y coord, diameter
  //using the current selected star's x and y values, create a border around it in red. Each time the button is pressed pass,the next star's coordinates
  noFill();
  stroke(255,0,0);
  rect(starX-starD,starY-starD,starD*2,starD*2);
  //display target's values
  text("Targeting Star at :",30,50);
  text(starX,50,70);
  text(starY,50,90);
  
}
}
 }
