import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class writingApp extends PApplet {

public void setup(){
  size(600,600,P3D);
}

public void draw(){
  background(255);
  stroke(1.0f,1.0f,1.0f);
  fill(1.0f);
  
 // lights();

translate(width/2.0f, height/2.0f, 20);

  sphere(90.0f);


 // box(10,20,20);
}

public class Content{
  public Content(){
  }
}
  public class WritingUtensil{
  
  
  public WritingUtensil(){
    int my_color;
    float body_height;
    float body_radius;
    float tip_height;
    float tip_radius;
    String name;
    PVector location; // in 3D
    float neck_slope; // in radians
    float orientation; // in radians
    Content content;
  }
  
  // returns the height of the writing utensil
  public float height(){
    return 0.0f;
  }
  
  // puts pigment of contents on screen
  public void write(){
  }
  
  // same as above with pressure option2
  public void write(float pressure_used){
    // call deteriorationRate and pass to a content.detetro
    // content.deteriorate(deteriorationRate());
  }
  
  /* 
     Removes pigment from screen by drawing in the passed-in background color.
     Size of mark is going to be determinded by the body radius.
  */
  public void erase(int bg_color, float pressure_used){
  }
  
  /* computes how quickly the contents get used up
    and returns a float represenation of that.
    */
  public float deteriorationRate(float pressure_used){
    return 1.0f;
  }
  
  public float contentVolume(){
    return 0.0f;
  }
  
  public void updateContentsVolume(){
    
  }
  
  public void render(){

  }
  
  public void setContents(){

  }
  
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--hide-stop", "writingApp" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
