/*
Serpentine 

The word I choose to represent this piece is Serpentine. Through 40 sets of circle motion of pot, 
the effect of Serpentine will be achieved such that a heliciform rainbow 

interaction:
    The heliciform rainbow will automatically expand the whirlpool and after it reach the maximum
    heliciform shapes,it will be formed as anti-spiral wave.
    
Author:
    Andy Zeng

*/
int len=40;                                        // initiate length of 
float angle[];                                     // initiate an empty float array to store angles for each pot
int distance[];                                    // initiate an empty integer array to store distances for each pot
float posX;                                        // initiate postion in x-axis and will be mutated for each pot
float posY;                                        // initiate postion in y-axis and will be mutated for each pot
void setup() {
  size(700, 700);                                  // create a canvas with size of 700*700
  angle=new float[len];                            // create new empty float elements in the angle array
  distance=new int[len];                           // create new empty int elements in the distance array
  for (int i=0; i<len; i++) {                      // assign distance larger as it go through the distance array
    distance[i]=8*(i+1);
  }
  colorMode(HSB,360,100,100);                      // The reason Why I choose HSB rather than RGB since I can assign different color on each pot
}
void draw() {
  background(0);                                   // set up a black background
  translate(width/2,height/2);                     // translate half of height across and half of width down
  for(int i=0;i<len;i++){                          // for each pot, based upon their mutating angle and distance, to assign the postion of each one using cos and sin to create circle motion
    posX=cos(radians(angle[i]))*distance[i];
    posY=sin(radians(angle[i]))*distance[i];
    fill(i*5,100,100);                             // fill in different color giving a mutating value i to each pot with 100% saturation and brightness
    ellipse(posX,posY,8,8);                        // create each pot at specific position
    angle[i]+=(len-(float)i+1)/40;                 // mutate angle of each pot larger as it go through until the end of angle array
  }
}
