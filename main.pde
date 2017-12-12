Hand leftHand;
ArrayList<Star> stars;
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
  stars = new ArrayList<Star>();
  for (int i = 0; i < 60; i++) {
    stars.add(new Star(random(120,800),random(0,400),10,1));
    }
}
  
void draw() {
  background(20,0.1);
  block();
  for (int i = 0; i < 60; i++) {
    stars.get(i).display();
  leftHand.display();
  mesh();
  
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
