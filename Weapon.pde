class Weapon {
 int x;
 int y;
 int z;
 int a;
 int b;
 int c;
 int d;
 int e;
 int f;
 int i;
 int v;
 int wstatus;
 int reloadTime;
 float rateforContact;
 
 Weapon() {
   x=0;
   y=0;
   z=100;
   a=0;
   b=0;
   wstatus=0;
   reloadTime=0;
   rateforContact=0;
   c=0;
   d=0;
   e=0;
   f=0;
   i=0;
   v=70;
  }

int fire(float[] sx, float[] sy, float[] sd) {//ArrayList stars /*pass star coordinates and possibly sizes*/
   /*stars.get(0);
   print(stars);*/
   //if plasmaBall isn't charged
   //int sx = stars.get(i)sx;
   if(x <= z){
     c=mouseX;
     d=mouseY;
   }
   reloadTime++;
   
   //if mouse too low
   if(mouseY > 500) {
     d=500;
   }
   //if mouse too high
   if(mouseY < 400) {
     d=400;
   }
   //if plasmaBall is fully charged
   if(x >= z){
     //call reload()
     int g=0;
     if(z<95) {
       g=255;
     }
     stroke(0);
    fill(255,0,0);
    rect(30,200,50,250);
    ellipse(55,450,50,10);
    fill(255);
    if(250-(z*2)<250){
      rect(30,200,50,250-(z*2.5));
    }
   /*else {
      fill(255);
      rect(30,200,50,250);
    }*/
    fill(255,g,g);
    ellipse(55,200,50,20);
     //move away
    z=x=y=y-2;
    //become smaller
    a=a+5;
    b=b-5;
    //if (x and y coords of match a star element, explode star, change star element attributes, and stop drawing ball 
    for (int i = 0; i < 60; i++) {
      //if((sx[i]-float(c+a))>5 && (sy[i]-float(d+b))<5)
      if(dist(sx[i], sy[i], c+a, d+b)<sd[i]) {
       v=i;
       reloadTime=250;
    }
  }
}
   
   fill(150);
   //if not at max size, draw includes mouseX and Y, later change independent on trajectory
   ellipse(c+a,d+b,x,y);
   x++;
   y++;
   
  
   //if plasmaBall has no more use
   if(reloadTime==250)
   {
     wstatus=0;
     reloadTime=0;
     x=y=a=0;
     b=0;
     z=100;
   }
   return i;
 }
}
