/*
Mesmerizing 

The word I choose to represent this piece is mesmerizingThrough three sets of reciprocating motion, 
the effect of Mesmerizing will be achieved such that can sypnotize viewers

interaction:
    the move speed of rectangles will be adjusted with how vertically close the mouse is to the 
    center of board.
    
Author:
    Cytheria Hu

*/

float d;                                                  // set a default parameter as initial diameter
float horizon;                                            // set the parameter for top and bottom of motion
float vertice;                                            // set the parameter for leftmost and rightmost points

void setup() 
{
              size(700,700);                              // create a canvas with size of 700 * 700 
              smooth(0);                                  // no need to smoothing geometris
              background(0,0,0);                          // set the background of interface
}

void draw() {
             horizon=(350+sin(d-PI)*200);                 // set the value for vertical maximum or minimum
             vertice=(350+cos(d-PI)*200);                 // set the value for horizontal maximum or minimum
             fill(255, 10);                               // fill color of canvas
             rect(0,0,width,height);                      // create canvas with specific size
             fill(0);                                     // fill all colors of rectangle as black
             rect(350+sin(d)*200,350+cos(d)*200, 50, 50); // set the center of rectangle initially at the top of circle and do clockwise motion
             rect(350+sin(d)*200,350,50,50);              // set the center of rectangle go right first and go left
             rect(350,350+cos(d)*200,50,50);              // set the center of rectangle drop down first and go up
             rect(horizon,vertice, 50, 50);               // set the center of rectangle initially at the bottom of circle and do clockwise motion
             rect(horizon, 350, 50, 50);                  // set the center of rectangle go left first and go right
             rect(350, vertice, 50, 50);                  // set the center of rectangle go up first and then drop down
             d+= (mouseY-350)/4500;                       // set the move speed that can be adjusted by how close mouse is to the middle axis 
}