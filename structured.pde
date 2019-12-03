/*
Structured Rainbow Triangle

The word I choose to represent this piece is Structured. Firstly it will create a large triangle and successively
create some smaller ones within the largest triangle. These triangles will be in different gradual colors from the
bottom to the top.

interaction:
    These little triangles will form automatically with different gradual colors
    
Author:
    longshan hu

*/
float LargeWidth = 300;                                                                                             // set the base length of the largest triangle
float LargeHeight= 259.81;                                                                                          // set the height length of the largest triangle (259.81 is trying to set equilateral triangle)
// set the initial division of triangle, like if division is 1 there is one line to separate the largest triangle at first, if it is 2 there is two line to separate the largest triangle at first. 
float divisions = 0;                                                                                                
float colour = 0;                                                                                                   // set the initial color as white

void setup() {
  size(1000, 1000);                                                                                                 // create a canvas with size of 1000 * 1000
  noFill();                                                                                                         // no color to fill since the color would be changed automatically
  colorMode(HSB, 360, 100, 100);                                                                                    // fill the color mode as hue, saturation and brightness with all maximum value of each other
} 

void draw() {
  background(0, 0, 100);                                                                                            // set the background as a bright white
  for (float i = 0; i < divisions; i++) { 
    for (float j = 0; j <= i; j++) {
      float LargeWidth2 = LargeWidth - (LargeWidth/divisions) * i;                                                  // the LargeWidth2 will be the changing base length of the second largest triangle
      float LargeHeight2 = LargeHeight - (LargeHeight/divisions) * i;                                               // the LargeHeight2 will be the changing height length of the second largest triangle
      float x = width/2  - (LargeWidth/divisions/2)*i + j*(LargeWidth/divisions);                                   // set the changing x-coordiante of left-corner of the triangle
      float y = height/2 + (LargeHeight/divisions/2)*i;                                                             // set the changing y-coordinate of top point of the triangle
      fill(colour, 100, 100, 10);                                                                                   // It will fill the triangle with 100% saturation and brightness and 10% opacity, as well as changing colors
      triangle(x, y - LargeHeight2/2, x - LargeWidth2/2, y + LargeHeight2/2, x + LargeWidth2/2, y + LargeHeight2/2);// create triangle based upon x-coordinate and y-coordinate for three vertices
    }
  }
  colour += 0.5;                                                                                                    // the changing speed of color is 0.5
  if (colour >= 360) {                                                                                              // the color will be reset to white while all colors have already go through
    colour = 0;
  }
  divisions += 0.02;                                                                                                // the changing speed of dividing triangle is 0.02
  if (divisions >= 10){                                                                                             // the division line of triangle will pause to 10 while division line reached number of 10
   divisions = 10;
  }
}
