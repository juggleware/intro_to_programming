  public class WritingUtensil{
  
  
  public WritingUtensil(){
    color my_color;
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
  float height(){
    return 0.0;
  }
  
  // puts pigment of contents on screen
  void write(){
  }
  
  // same as above with pressure option2
  void write(float pressure_used){
    // call deteriorationRate and pass to a content.detetro
    // content.deteriorate(deteriorationRate());
  }
  
  /* 
     Removes pigment from screen by drawing in the passed-in background color.
     Size of mark is going to be determinded by the body radius.
  */
  void erase(color bg_color, float pressure_used){
  }
  
  /* computes how quickly the contents get used up
    and returns a float represenation of that.
    */
  float deteriorationRate(float pressure_used){
    return 1.0;
  }
  
  float contentVolume(){
    return 0.0;
  }
  
  void updateContentsVolume(){
    
  }
  
  void render(){

  }
  
  void setContents(){

  }
  
}


