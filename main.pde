Hand leftHand;
Weapon plasmaBall;
ArrayList<Star> stars;
float[] xcoord = new float[60];
float[] ycoord = new float[60];
float[] diameter = new float[60];
import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup() {
  size(800,600);
  minim= new Minim(this);
  music = minim.loadFile("Best_Dramatic_music_ever.mp3");
  music.play();
  music.rewind();
  leftHand = new Hand();
  plasmaBall = new Weapon();
  stars = new ArrayList<Star>();
  for (int i = 0; i < 60; i++) {
    stars.add(new Star(random(120,800),random(0,400),10,1));
    xcoord[i] = stars.get(i).sx;
    ycoord[i] = stars.get(i).sy;
    diameter[i] = stars.get(i).diameter;
    }
}
  
void draw() {
  background(20,0.1);
  block();
  reload();
  for (int i = 0; i < 60; i++) {
    stars.get(i).display();
    }
    if(plasmaBall.wstatus == 1) {
    int a=plasmaBall.fire(xcoord,ycoord,diameter);//stars
  }
  leftHand.display();
  mesh();
  
}

void mouseClicked() {
  plasmaBall.wstatus = 1;
  }

void mesh() {
  fill(255);
  
  ellipse(400,0,700,100);
  ellipse(400,600,700,100);
}

void block() {
  fill(0);
  stroke(255);
 line(120,90,680,90);
 line(120,510,680,510);
 line(120,90,120,510);
 line(680,90,680,510);
 rect(120,90,560,420);
 }
 
 void reload() {
  stroke(0);
  fill(255);
  rect(30,200,50,250);
  ellipse(55,200,50,20);
  ellipse(55,450,50,10);
  //if fired
  
  textSize(10);
    text("Reload Time",30,470);
}
