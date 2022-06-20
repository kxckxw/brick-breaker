void gameover() {
  background(0);
  fill(255);
  textSize(100);
  text("Game Over", 500, 300);
  textSize(80);
}//-------------------end





void gameoverClicks() {
  mode = INTRO;
  lives = 3;
}
