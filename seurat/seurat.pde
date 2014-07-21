/* @pjs preload="FishImage.jpg"; */
PImage img;

//set up function - runs once
void setup() 
{
  size(500,500);
  img = loadImage("FishImage.jpg","jpg");
}

//draw loop - infinite loop
void draw() 
{
  
  int randomx;
  int randomy;
  
  for(int i = 0; i < 50; i++){
    randomx = round(random(499));
    randomy = round(random(499));
    
    int loc = randomx + randomy*500;
      // Get the R,G,B values from image
      float r = red   (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue  (img.pixels[loc]);
    
    stroke(r,g,b);
    fill(r,g,b);
    ellipse(randomx,randomy,3,3);
  }
}
