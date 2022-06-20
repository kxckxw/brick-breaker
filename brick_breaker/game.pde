void game() {
  background(lightblue);
  //paddle
  strokeWeight(5);
  stroke(blue);
  fill(white);
  circle(paddlex, paddley, paddled);

  //scoring + lives
  fill(255);
  textSize(30);
  text("Score: " + score, 200, 800);
  text("Lives: " + lives, 800, 800);
  timer = timer - 1;



  //target
  strokeWeight(2);
  stroke(pink);
  fill(lightpink);
  circle(x, y, d);
  

  //moving target
  if (timer < 0) {
    x = x + vx;
    y = y + vy;
  }
  //bouncing target
  if (y < d/2 ) {
    vy = vy * -1;
  }
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }


  if (dist(paddlex, paddley, x, y) <= paddled/2 + d/2) {
    vx = (x - paddlex)/20;
    vy = (y - paddley)/20;
  }
  if (paddlex < 100) {
    paddlex = 100;
  }
  if (paddlex > 900) {
    paddlex = 900;
  }

  if (y > 900) {
    lives = lives - 1;
    x = width/2;
    y = 500;
    timer = 100;
  }
  if (lives < 1) {
    mode = GAMEOVER;
  }

  //move ball
  if (akey == true) paddlex = paddlex - 5;
  if (dkey == true) paddlex = paddlex + 5;
  if (leftkey == true) paddlex = paddlex - 5;
  if (rightkey == true) paddlex = paddlex + 5;

  //bricks

  strokeWeight(4);
  
 
 fill(lightred);
 stroke(red);
  if(tempy == 200) {
      fill(lorange);
      stroke(orange);
    }
  int i = 0;
  while (i<n) {
    circle(bx[i], by[i], brickd);
    
    if (dist(x, y, bx[i], by[i]) <= d/2 + brickd/2) {
      vx = (x - bx[i])/6;
      vy = (y - by[i])/6;
    }
    
    
    i=i+1;  
  }
}//-------------------end




void gameClicks() {
  mode = PAUSE;
}
