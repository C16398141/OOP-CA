class Hand {
 int x;
 int y;
 int fingerwidth;
 int set;
 int handwidth;
 
 Hand() {
   //initialise variables here
   set=-25;
   fingerwidth=10;
   handwidth=fingerwidth*4;
  }
  
  void display() {
   fill(255);
   stroke(0);
   x=mouseX;
   y=mouseY;
   
   if(mouseY > 500) {
     y=500;
   }
   if(mouseY < 400) {
     y=400;
   }

   quad(x+20,y,x-10,600,x-50,600,x-20,y);
   rect(x+set,y-30,40,50);
   rect(x+set+(fingerwidth),y-40,10,35);
   rect(x+set+(fingerwidth*2),y-45,10,40);
   rect(x+set+(fingerwidth*3),y-38,10,33);
   rect(x+set+(fingerwidth*4),y-15,10,35);
   //stroke hand colour to cover rect bottom lines
   stroke(255);
   line(x-20,y-5,x+14,y-5);
   line(x+15,y+19,x+15,y+5);
   line(x-23,y+20,x+15,y+20);
   stroke(0); 
 }
}
