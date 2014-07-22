/* @pjs preload="FishImage.jpg"; */
PImage img;
int sliderx = 250;
boolean sliderd = false;

//set up function - runs once
void setup() {
  size(500,530);
  img = loadImage("FishImage.jpg","jpg");
}

//draw loop - infinite loop
void draw() {
  
  int randomx;
  int randomy;
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  for(int i = 0; i < (500-sliderx)/50+1; i++){
    randomx = round(random(499));
    randomy = round(random(499));
    
    int loc = randomx + randomy*500;
      // Get the R,G,B values from image
      float r = red   (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue  (img.pixels[loc]);
    
    stroke(r,g,b);
    fill(r,g,b);
    ellipse(randomx,randomy,ceil(sliderx/20),ceil(sliderx/20));
  }
  
  if(sliderd){
    sliderx = mouseX;
    if(sliderx > 500-5){
      sliderx = 500-5;
    }
    if(sliderx < 4){
      sliderx = 4;
    }
  }
  
  stroke(0,0,0);
  
  fill(0,0,0);
  rect(250,515,500,30);
  
  fill(255,255,255);
  rect(sliderx,515,10,30);
  
}

void mousePressed(){
  if(mouseY>500){
    sliderd = true;
  }
}

void mouseReleased(){
  sliderd = false;
}
