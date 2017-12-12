class Star {
 
  public float sx;
  public float sy;
  public float diameter;
  public int status;
  
  Star(float sx, float sy, float diameter, int status) {
   this.sx = sx;
   this.sy = sy;
   this.diameter = diameter;
   this.status = status;
  }
  
  void display() {
    fill(255);
    //if(status==1){
      //if outside zoom border make small
      if(sx <= 120 || sx >= 680 || sy <= 90)
      {
       diameter = 2; 
      }
    ellipse(sx,sy,diameter,diameter);
    
  }
}
