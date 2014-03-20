public class Planet{
  int[] loc;
  color myColor;
  int mySize;
  int dx, dy;
  String name;
  
  public Planet(){
    println("making a planet");
    loc = new int[2];
    assignDefaultValues();
  }
  
  void assignDefaultValues(){ 
    println("assigning values");
    name = "a planet";
    loc[0] = 100;
    loc[1] = 200;
    myColor = color(255,255,0);
    mySize = 50;
    dx = dy = 10;
  }
  
  boolean isCollidingX(int left, int right) { // new function
    if ( loc[0] + mySize / 2 >= right || loc[0] - mySize / 2 <= left )
      return true;
    return false;
  }

  boolean isCollidingY(int top, int bottom) { // new function
    if ( loc[1] + mySize / 2 >= bottom || loc[1] - mySize / 2 <= top )
      return true;
    return false;
  }

  void checkEdgeBounce() { // new function
    if (isCollidingX(0, width)  ) // check horizontal edge crossing
      dx *= -1;
    if ( isCollidingY(0, height) ) // check vertical edge crossing
      dy *= -1;
  }
  
  void drawPlanet(){
    fill(myColor);
    ellipse(loc[0], loc[1], mySize, mySize);
    checkEdgeBounce();
    loc[0] += dx;
    loc[1] += dy;
    
  }
}

public class Meteor extends Planet {
  
  boolean followMouse;
  
  public Meteor(){
    super();
    println("actually im a meteor");
    
    myColor = color( random(255), random(255), random(255) );
    
    dx = (int) random(3, 17);
    dy = (int) random(3, 17);
    
    followMouse = false;
  }
  
  void drawPlanet(){
    if ( followMouse ) {
      fill(myColor);
      loc[0] = mouseX;
      loc[1] = mouseY;
      ellipse(loc[0], loc[1], mySize, mySize);
    }
    else{
      super.drawPlanet();
    }
    
  }
  
}
