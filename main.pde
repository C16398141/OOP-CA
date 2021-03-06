//declaring objects, arraylists etc
Hand leftHand;
Weapon plasmaBall;
Button targetSelect;
ArrayList<Star> stars;
float[] xcoord = new float[60];
float[] ycoord = new float[60];
float[] diameter = new float[60];
import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup() {
  size(800,600);
  //play the desired music file
  minim= new Minim(this);
  music = minim.loadFile("Best_Dramatic_music_ever.mp3");
  music.play();
  music.rewind();
  //initialising objects
  leftHand = new Hand();
  plasmaBall = new Weapon();
  targetSelect = new Button();
  stars = new ArrayList<Star>();
  //fill the arraylist including some randomly generated data
  for (int i = 0; i < 60; i++) {
    stars.add(new Star(random(120,800),random(0,400),10,1));
    //put that data into arrays to pass through methods after the arraylist wouldn't work perfectly when passed through directly
    xcoord[i] = stars.get(i).sx;
    ycoord[i] = stars.get(i).sy;
    diameter[i] = stars.get(i).diameter;
    }
}
  
void draw() {
//draw the design elements
  background(20,0.1);
  block();
  reload();
  //display all of the stars
  for (int i = 0; i < 60; i++) {
    stars.get(i).display();
    }
    // if the plasmaball has been clicked to fire, fire
   if(plasmaBall.wstatus == 1) {
    int a=plasmaBall.fire(xcoord,ycoord,diameter);//pass the star's values to check for collisions
    //if the returned value is a real star object move them to the dead zone
    if(a!=70) {
     stars.get(a).sx=0;
     stars.get(a).sy=0;
    }
  }
  //select a target (the target being a star)
  if(targetSelect.status == 1) {
    targetSelect.display(xcoord[targetSelect.target-1],ycoord[targetSelect.target-1],diameter[targetSelect.target-1]);
  }
  border();
  buttons();
  leftHand.display();
  mesh();
  
}

void mouseClicked() {
//if the mouse clicks on this button, change the status which will call its method above inside draw()
  if(dist(mouseX, mouseY, 750, 300)<80) {
    targetSelect.status = 1;
    targetSelect.target++;
    targetSelect.r = 255;
    targetSelect.g = targetSelect.b = 0;
    }
    else{
    //else change the status which will call its method above inside draw()
  plasmaBall.wstatus = 1;
  }
}
//design elements methods
void mesh() {
  fill(255);
  
  ellipse(400,0,700,100);
  ellipse(400,600,700,100);
}

//zoom method
void block() {
  fill(0);
  stroke(255);
 line(120,90,680,90);
 line(120,510,680,510);
 line(120,90,120,510);
 line(680,90,680,510);
 rect(120,90,560,420);
 fill(20);
 stroke(255);
 quad(680,480,700,510,100,510,120,480);
 fill(0);
 stroke(255);
 textSize(28);
 text("ZOOM x500", 320, 508);
 }
 
 void border() {
  float space=120;
  float averageGap=0;
  float avGap=0;
  int no_xElements=0;
  int no_yElements=0;
  float lsize=5;
  int i=0;
  
  //creates coordinate graph
  stroke(255);
  line(space,90,space,480);
  line(680,480,space,480);
  no_yElements=12;
  no_xElements=25;
  averageGap=(height-2*space)/no_yElements;
  avGap=(width-2*space)/no_xElements;
  for (i=0; i<=no_yElements; i++)
  {
    line(space,space+(averageGap*i),space-lsize,space+(averageGap*i));
    textSize(10);
    text((no_yElements-i)*10,space-(6*lsize)+4,space+(averageGap*i)+4);
  }
  for (i=0; i<=no_xElements; i++)
  {
    line(space+(avGap*i),height-space,space+(avGap*i),height-space+lsize);
  }
}
//displays time left measure before finished reloading
 void reload() {
  stroke(0);
  fill(255);
  rect(30,200,50,250);
  ellipse(55,200,50,20);
  ellipse(55,450,50,10);
  
  textSize(10);
    text("Reload Time",30,470);
}
//displays buttons whic have variables dependent on objects' variables
void buttons() {
 stroke(0);
  fill(255);
  ellipse(745,155,80,80);
  ellipse(750,150,80,80);
  
  fill(targetSelect.r,targetSelect.g,targetSelect.b);
  ellipse(745,305,80,80);
  ellipse(750,300,80,80);
 
  stroke(255);
  strokeWeight(2);
  textSize(10);
  fill(0);
  if(targetSelect.g==0) {
  //after button is activated
    text("Target Selected",710,305);
  }
  else {
  //before button is clicked
    text("Select Target",720,305);
  }
  stroke(0);
  fill(255);
  ellipse(745,455,80,80);
  ellipse(750,450,80,80);
  textSize(13);
  fill(0);
  text("Welcome!",720,152);
  textSize(20);
  text("Fire",732,456);
  strokeWeight(1);
  fill(255); 
}
