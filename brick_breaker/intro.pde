void intro() {
  noStroke();
  background(white);
  
  int i = width;
  float g = 0;
  while(i>0) {
    g = map(i, width, 0, 255, 0);
    fill(255, g, 200);
    ellipse(width/2, width/2, i, i);
    i = i - 100;
    
    fill(white);
    textSize(150);
  text("Breakout", 500, 300);
  textSize(50);
  text("<click to begin>", 500, 700);
  
 
    
  }
  
}//---------------------end






void introClicks() {
  mode = GAME;
}
