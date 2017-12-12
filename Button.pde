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
   r = g = b = 255;
  }
  
  void display(float starX, float starY, float starD) {
  //using the current selected star's x and y values, create a border around it in red. Each time the button is pressed pass,the next star's coordinates. First insert stars in the order they were created then perhaps try in order of x values
  noFill();
  stroke(255,0,0);
  rect(starX-starD,starY-starD,starD*2,starD*2);
  //display target's values
  text("Targeting Star at :",30,50);
  text(starX,50,70);
  text(starY,50,90);
  //when clicked indicate that it has been clicked. Perhaps give the illusion that the button is 3d and move it closer to the bottom ellipse for a bit
  
}
}
 }
