void pause() {
  fill(255);
  textSize(150);
  text("PAUSED", 500, 350);
  textSize(50);
  text("<click to resume>", 500, 700);
}//-------------------end


void pauseClicks() {
  mode = GAME;
}
